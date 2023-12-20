import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/core/init/network/network_core/service_error_model.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/question/answer/question_answer_request.model.dart';
import 'package:numicorn_mobile/view/question/question/question_request.model.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/report/question_report_error_request.model.dart';
import 'package:numicorn_mobile/view/question/service/IQuestionService.dart';
import 'package:numicorn_mobile/view/question/service/question_service.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import 'package:whiteboard/whiteboard.dart';

part 'question_view_model.g.dart';

class QuestionViewModel = _QuestionViewModelBase with _$QuestionViewModel;

abstract class _QuestionViewModelBase extends BaseViewModel with Store {
  ScrollController scrollController = ScrollController();
  late IQuestionService questionService;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController reportExplainController = TextEditingController();

  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {
    questionService = QuestionService(this.buildContext!);
  }

  WhiteBoardController whiteBoardController = WhiteBoardController();

  @observable
  bool loading = false;

  @observable
  bool errorLoading = false;

  @observable
  bool answerPageStatus = false;

  @observable
  Color whiteboardColor = const Color(0xff6562F6);

  @observable
  Timer timer = Timer(Duration(seconds: 1), () {});

  @observable
  int secondsElapsed = 0;

  @observable
  bool whiteboardDuster = false;

  @observable
  QuestionModel questionModel = QuestionModel(path: '');

  @observable
  List<Answers> answers = [];

  @observable // Type: 1
  String answerText = '';

  @observable // Type: 2
  bool? answerTrueOrFalse;

  @observable // Type: 4
  int? answerOption;

  @observable
  Sections section = Sections();

  @observable
  List<Items> itemQuestions = [];

  @observable
  List<Items> itemAnswers = [];

  @observable
  int? pairingQuestion;

  @observable
  int? pairingAnswer;

  @observable
  List<int> pairingIds = [];

  @observable // Type: 2
  bool whiteBoard = false;

  @action
  String findLastSecond() {
    int minutes = secondsElapsed ~/ 60;
    int seconds = secondsElapsed % 60;

    String formattedTime =
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
    return formattedTime;
  }

  @action
  void timerStart({int? second = 0}) {
    secondsElapsed = second ??= 0;
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      secondsElapsed++;
    });
  }

  @action
  void timerStop() {
    timer.cancel();
  }

  bool isViewTrue(List<dynamic> targets) {
    for (var target in targets) {
      if (target is Map<String, dynamic> && target['view'] == true) {
        print('is view true');
        return true;
      }
    }
    print('is view false');
    return false;
  }

  @action
  Future<void> fetchQuestion(int section_id, int unit_id) async {
    try {
      print("level: " + section.level.toString());
      final response = await questionService.question(QuestionRequestModel(
        section_id: section_id,
        unit_id: unit_id,
        level: section.level,
        again: section.again,
        againLevel:
            questionModel.againLevel != null ? questionModel.againLevel : null,
      ));
      print("---- TEST 1 -----");

      if (response.statusCode == 200) {
        removeAnswer();
        questionModel = await response.data.data;
        if (questionModel.type == 3) {
          splitItemsToArrays(questionModel.items ?? []);
        } else if (questionModel.type == 4) {
          answers = await response.data.data.answers;
        }
        loading = true;
      } else {
        timerStop();
        print("---- TEST 2 -----");
        ServiceErrorModel errorModel = response;
        List<TransitionItem> actions = [];
        print("---- TEST 211 -----");

        if (errorModel.errors['data'] != null) {
          print("---- TEST 212 -----");

          print("object: " + errorModel.errors['data'].toString());
          if (errorModel.errors['data']['newDoping'] != null &&
              errorModel.errors['data']['newDoping'] == true) {
            print("---- TEST 212--1 -----");
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_DOPING_PAGE,
              params: true,
            ));
          } else if (errorModel.errors['data']['dopingRemember'] != null &&
              errorModel.errors['data']['dopingRemember'] == true) {
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_DOPING_RELOAD_PAGE,
              params: true,
            ));
          }

          if (errorModel.errors['data']['rosette'] != null) {
            print("---- TEST 213 -----");
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_ROSETTE_PAGE,
              params: errorModel.errors['data']['rosette'],
            ));
          }

          print("---- TEST 214 -----");
          if (errorModel.errors['data']['achievements'] != null) {
            print("---- TEST 215 -----");
            errorModel.errors['data']['achievements'].forEach(
              (achievement) {
                actions.add(TransitionItem(
                  page: NavigationConstants.TRANSITION_ACHIEVEMENT_PAGE,
                  params: achievement,
                ));
              },
            );
          }

          if (errorModel.errors['data']['targets'] != null &&
              isViewTrue(errorModel.errors['data']['targets'])) {
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_TARGET_PAGE,
              params: errorModel.errors['data']['targets'],
            ));
          }
          if (errorModel.errors['data']['series'] != null) {
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_DAILY_SERIES_PAGE,
              params: errorModel.errors['data']['series'],
            ));
          }
          if (errorModel.errors['data']['cup'] != null) {
            errorModel.errors['data']['lastTime'] = findLastSecond();
            errorModel.errors['data']['target'] = calculatePercentage(
              errorModel.errors['data']['totalQuestion'],
              errorModel.errors['data']['notBeWrongQuestion'],
            );
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_CUP_PAGE,
              params: errorModel.errors['data'],
            ));
          }

          if (errorModel.errors['data']['diamond'] != null) {
            actions.add(TransitionItem(
              page: NavigationConstants.TRANSITION_DIAMOND_PAGE,
              params: errorModel.errors['data']['diamond'],
            ));
          }
        }

        TransitionModel transitions = TransitionModel(
          index: 0,
          actions: actions,
          finishPage: FinishPage(
            page: NavigationConstants.HOME,
            y: section.y!,
          ),
        );
        print(transitions.toString());
        await cupToPage(transitions);
      }
    } catch (e) {
      print("exception");
      print(e);
    }
  }

  int calculatePercentage(int totalQuestions, int solvedQuestions) {
    if (totalQuestions == 0) {
      return 0; // Sıfır bölen hatasını önlemek için 0 döndür
    }

    double percentage = (solvedQuestions / totalQuestions) * 100.0;
    return percentage.toInt(); // Küsüratı at ve yüzdeyi integer'a çevir
  }

  @action
  Future<void> answerPage() async {
    section.question = questionModel;
    section.lastSecond = secondsElapsed;
    timerStop();
    // print("data: " + questionModel.openedAnswer.toString());
    if (questionModel.openedAnswer != null &&
        questionModel.openedAnswer == true) {
      return await navigation.navigateToPage(
        path: NavigationConstants.QUESTION_ANSWER_DETAIL,
        data: section,
      );
    } else {
      return await navigation.navigateToPage(
        path: NavigationConstants.QUESTION_ANSWER,
        data: section,
      );
    }

    /* 
    {
      "id": 1,
      "target": 5,
      "value": 6,
      "view": true,
      "title": "5 Kupa Kazan"
    },
    {
      "id": 2,
      "target": 2,
      "value": 2,
      "view": true,
      "title": "2 Ders Tamamla"
    },
    {
      "id": 4,
      "target": 3,
      "value": 0,
      "view": false,
      "title": "3 Hatasız Seri Yap"
    },
    {
      "id": 5,
      "target": 5,
      "value": 0,
      "view": false,
      "title": "5 Soru Çöz"
    }
    */
    // List<TargetModel> targets = [
    //   TargetModel(
    //     id: 1,
    //     target: 5,
    //     value: 6,
    //     view: true,
    //     title: "5 Kupa Kazan",
    //   ),
    //   TargetModel(
    //     id: 2,
    //     target: 5,
    //     value: 2,
    //     view: false,
    //     title: "2 Ders Tamamla",
    //   ),
    // ];

    // TransitionModel transitions = TransitionModel(
    //   index: 0,
    //   actions: [
    //     // TransitionItem(
    //     //   page: NavigationConstants.TRANSITION_ROSETTE_PAGE,
    //     //   params: rosette,
    //     // ),
    //     // TransitionItem(
    //     //   page: NavigationConstants.TRANSITION_ACHIEVEMENT_PAGE,
    //     //   params: 20,
    //     // ),
    //     // TransitionItem(
    //     //   page: NavigationConstants.TRANSITION_DIAMOND_PAGE,
    //     //   params: 20,
    //     // ),
    //     TransitionItem(
    //       page: NavigationConstants.TRANSITION_DOPING_PAGE,
    //       params: 20,
    //     ),
    //     TransitionItem(
    //       page: NavigationConstants.TRANSITION_DIAMOND_PAGE,
    //       params: 20,
    //     ),
    //     TransitionItem(
    //       page: NavigationConstants.TRANSITION_CUP_PAGE,
    //       params: 10,
    //     ),
    //     TransitionItem(
    //       page: NavigationConstants.TRANSITION_DAILY_SERIES_PAGE,
    //       params: 5,
    //     ),
    //   ],
    //   finishPage: FinishPage(
    //     page: NavigationConstants.HOME,
    //     y: section.y!,
    //   ),
    // );
    // cupToPage(transitions);
  }

  @action
  dynamic findAnswer() {
    switch (questionModel.type) {
      case 1:
        return answerText;

      case 2:
        return answerTrueOrFalse! ? 1 : 2;

      case 3:
        return true;

      case 4:
        return answerOption;

      default:
        return '';
    }
  }

  @action
  void removeAnswer() {
    answerText = '';
    answerTrueOrFalse = null;
    pairingQuestion = null;
    pairingAnswer = null;
    answerOption = null;
  }

  @action
  dynamic findAnswerStatus() {
    switch (questionModel.type) {
      case 1:
        return answerText == '' ? false : true;

      case 2:
        return answerTrueOrFalse == null ? false : true;

      case 4:
        print("# answerOption: " + answerOption.toString());
        return answerOption == null ? false : true;

      default:
        return '';
    }
  }

  @action
  Future<bool> handleAnswer() async {
    final response = await questionService.questionAnswer(
      QuestionAnswerRequestModel(
        section_id: section.id,
        question_id: questionModel.id,
        answer: findAnswer(),
        level: section.level,
        again: section.again,
      ),
    );

    print("response" + response.data.data.toString());
    if (response.statusCode == 200) {
      if (response.data.data) {
        await fetchQuestion(section.id as int, section.unitId!);
        return true;
      }
      return response.data.data;
    } else {
      return false;
    }
  }

  @action
  Future<bool> resetTest() async {
    final response = await questionService.questionResetTest(
      QuestionRequestModel(
        section_id: section.id,
        level: section.level,
      ),
    );

    print("response" + response.data.data.toString());
    if (response.statusCode == 200) {
      if (response.data.data) {
        await fetchQuestion(section.id as int, section.unitId!);
        return true;
      }
      return response.data.data;
    } else {
      return false;
    }
  }

  @action
  void answerChange(String value) {
    if (answerText.length >= 2 && value == '.') {
      return;
    } else if (answerText.length >= 3) {
      removeAnswerEndLetter();
    }
    answerText += value;
  }

  @action
  void answerChangeOption(option) {
    answerOption = null;
    answerOption = option;
  }

  @action
  List<Items> shuffleList(List<Items> list) {
    final random = Random();
    for (var i = list.length - 1; i > 0; i--) {
      final j = random.nextInt(i + 1);
      final temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
    return list;
  }

  @action
  void splitItemsToArrays(List<Items> items) {
    List<Items> questionArray = [];
    List<Items> answerArray = [];

    items.forEach((item) {
      questionArray.add(Items(
        id: item.id,
        question: item.question,
        questionId: item.questionId,
        questionIsImage: item.questionIsImage,
        questionPath: item.questionPath,
      ));

      answerArray.add(Items(
        id: item.id,
        answer: item.answer,
        answerIsImage: item.answerIsImage,
        answerPath: item.answerPath,
      ));
    });

    itemQuestions = shuffleList(questionArray);
    itemAnswers = shuffleList(answerArray);
  }

  @action
  void errorContinue() {
    if (questionModel.type == 1 ||
        questionModel.type == 2 ||
        questionModel.type == 4) {
      fetchQuestion(section.id!, section.unitId!);
    } else if (questionModel.type == 3) {
      pairingQuestion = null;
      pairingAnswer = null;
    }
  }

  @action
  bool? pairingCheckError() {
    if (pairingQuestion != null && pairingAnswer != null) {
      if (pairingQuestion == pairingAnswer) {
        if (!pairingIds.contains(pairingQuestion)) {
          pairingIds.add(pairingQuestion!);
          pairingQuestion = null;
          pairingAnswer = null;

          if (pairingIds.length == questionModel.items!.length) {
            print("tüm sorular bitti");
            handleAnswer();
          }
          return true;
        }
      } else {
        print("ikisi de seçili");
        return null;
      }
    }
    print("birisi null");
    return false;
  }

  @action
  void removeAnswerEndLetter() {
    if (answerText != null && answerText.length > 0) {
      answerText = answerText.substring(0, answerText.length - 1);
    }
  }

  @action
  Future<void> cupToPage(TransitionModel transitions) async {
    await navigation.navigateToPage(
      path: transitions.actions[transitions.index].page,
      data: transitions,
    );
  }

  @action
  Future<void> homePage() async {
    timerStop();
    await navigation.navigateToPageClear(
      path: NavigationConstants.HOME,
      data: FinishPage(page: NavigationConstants.HOME, y: section.y!),
    );
  }

  @action
  Future<bool> questionReport() async {
    errorLoading = true;
    final response = await questionService.questionReportError(
      QuestionReportErrorRequestModel(
        question_id: questionModel.id,
        explain: reportExplainController.text,
      ),
    );
    reportExplainController.text = "";

    errorLoading = false;
    return true;
  }
}
