// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionViewModel on _QuestionViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_QuestionViewModelBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$trialFinishLoadingAtom =
      Atom(name: '_QuestionViewModelBase.trialFinishLoading', context: context);

  @override
  bool get trialFinishLoading {
    _$trialFinishLoadingAtom.reportRead();
    return super.trialFinishLoading;
  }

  @override
  set trialFinishLoading(bool value) {
    _$trialFinishLoadingAtom.reportWrite(value, super.trialFinishLoading, () {
      super.trialFinishLoading = value;
    });
  }

  late final _$errorLoadingAtom =
      Atom(name: '_QuestionViewModelBase.errorLoading', context: context);

  @override
  bool get errorLoading {
    _$errorLoadingAtom.reportRead();
    return super.errorLoading;
  }

  @override
  set errorLoading(bool value) {
    _$errorLoadingAtom.reportWrite(value, super.errorLoading, () {
      super.errorLoading = value;
    });
  }

  late final _$answerPageStatusAtom =
      Atom(name: '_QuestionViewModelBase.answerPageStatus', context: context);

  @override
  bool get answerPageStatus {
    _$answerPageStatusAtom.reportRead();
    return super.answerPageStatus;
  }

  @override
  set answerPageStatus(bool value) {
    _$answerPageStatusAtom.reportWrite(value, super.answerPageStatus, () {
      super.answerPageStatus = value;
    });
  }

  late final _$whiteboardColorAtom =
      Atom(name: '_QuestionViewModelBase.whiteboardColor', context: context);

  @override
  Color get whiteboardColor {
    _$whiteboardColorAtom.reportRead();
    return super.whiteboardColor;
  }

  @override
  set whiteboardColor(Color value) {
    _$whiteboardColorAtom.reportWrite(value, super.whiteboardColor, () {
      super.whiteboardColor = value;
    });
  }

  late final _$timerAtom =
      Atom(name: '_QuestionViewModelBase.timer', context: context);

  @override
  Timer get timer {
    _$timerAtom.reportRead();
    return super.timer;
  }

  @override
  set timer(Timer value) {
    _$timerAtom.reportWrite(value, super.timer, () {
      super.timer = value;
    });
  }

  late final _$secondsElapsedAtom =
      Atom(name: '_QuestionViewModelBase.secondsElapsed', context: context);

  @override
  int get secondsElapsed {
    _$secondsElapsedAtom.reportRead();
    return super.secondsElapsed;
  }

  @override
  set secondsElapsed(int value) {
    _$secondsElapsedAtom.reportWrite(value, super.secondsElapsed, () {
      super.secondsElapsed = value;
    });
  }

  late final _$whiteboardDusterAtom =
      Atom(name: '_QuestionViewModelBase.whiteboardDuster', context: context);

  @override
  bool get whiteboardDuster {
    _$whiteboardDusterAtom.reportRead();
    return super.whiteboardDuster;
  }

  @override
  set whiteboardDuster(bool value) {
    _$whiteboardDusterAtom.reportWrite(value, super.whiteboardDuster, () {
      super.whiteboardDuster = value;
    });
  }

  late final _$questionModelAtom =
      Atom(name: '_QuestionViewModelBase.questionModel', context: context);

  @override
  QuestionModel get questionModel {
    _$questionModelAtom.reportRead();
    return super.questionModel;
  }

  @override
  set questionModel(QuestionModel value) {
    _$questionModelAtom.reportWrite(value, super.questionModel, () {
      super.questionModel = value;
    });
  }

  late final _$questionFavoriteAtom =
      Atom(name: '_QuestionViewModelBase.questionFavorite', context: context);

  @override
  bool get questionFavorite {
    _$questionFavoriteAtom.reportRead();
    return super.questionFavorite;
  }

  @override
  set questionFavorite(bool value) {
    _$questionFavoriteAtom.reportWrite(value, super.questionFavorite, () {
      super.questionFavorite = value;
    });
  }

  late final _$answersAtom =
      Atom(name: '_QuestionViewModelBase.answers', context: context);

  @override
  List<Answers> get answers {
    _$answersAtom.reportRead();
    return super.answers;
  }

  @override
  set answers(List<Answers> value) {
    _$answersAtom.reportWrite(value, super.answers, () {
      super.answers = value;
    });
  }

  late final _$answerTextAtom =
      Atom(name: '_QuestionViewModelBase.answerText', context: context);

  @override
  String get answerText {
    _$answerTextAtom.reportRead();
    return super.answerText;
  }

  @override
  set answerText(String value) {
    _$answerTextAtom.reportWrite(value, super.answerText, () {
      super.answerText = value;
    });
  }

  late final _$answerTrueOrFalseAtom =
      Atom(name: '_QuestionViewModelBase.answerTrueOrFalse', context: context);

  @override
  bool? get answerTrueOrFalse {
    _$answerTrueOrFalseAtom.reportRead();
    return super.answerTrueOrFalse;
  }

  @override
  set answerTrueOrFalse(bool? value) {
    _$answerTrueOrFalseAtom.reportWrite(value, super.answerTrueOrFalse, () {
      super.answerTrueOrFalse = value;
    });
  }

  late final _$answerOptionAtom =
      Atom(name: '_QuestionViewModelBase.answerOption', context: context);

  @override
  int? get answerOption {
    _$answerOptionAtom.reportRead();
    return super.answerOption;
  }

  @override
  set answerOption(int? value) {
    _$answerOptionAtom.reportWrite(value, super.answerOption, () {
      super.answerOption = value;
    });
  }

  late final _$sectionAtom =
      Atom(name: '_QuestionViewModelBase.section', context: context);

  @override
  Sections get section {
    _$sectionAtom.reportRead();
    return super.section;
  }

  @override
  set section(Sections value) {
    _$sectionAtom.reportWrite(value, super.section, () {
      super.section = value;
    });
  }

  late final _$itemQuestionsAtom =
      Atom(name: '_QuestionViewModelBase.itemQuestions', context: context);

  @override
  List<Items> get itemQuestions {
    _$itemQuestionsAtom.reportRead();
    return super.itemQuestions;
  }

  @override
  set itemQuestions(List<Items> value) {
    _$itemQuestionsAtom.reportWrite(value, super.itemQuestions, () {
      super.itemQuestions = value;
    });
  }

  late final _$itemAnswersAtom =
      Atom(name: '_QuestionViewModelBase.itemAnswers', context: context);

  @override
  List<Items> get itemAnswers {
    _$itemAnswersAtom.reportRead();
    return super.itemAnswers;
  }

  @override
  set itemAnswers(List<Items> value) {
    _$itemAnswersAtom.reportWrite(value, super.itemAnswers, () {
      super.itemAnswers = value;
    });
  }

  late final _$pairingQuestionAtom =
      Atom(name: '_QuestionViewModelBase.pairingQuestion', context: context);

  @override
  int? get pairingQuestion {
    _$pairingQuestionAtom.reportRead();
    return super.pairingQuestion;
  }

  @override
  set pairingQuestion(int? value) {
    _$pairingQuestionAtom.reportWrite(value, super.pairingQuestion, () {
      super.pairingQuestion = value;
    });
  }

  late final _$pairingAnswerAtom =
      Atom(name: '_QuestionViewModelBase.pairingAnswer', context: context);

  @override
  int? get pairingAnswer {
    _$pairingAnswerAtom.reportRead();
    return super.pairingAnswer;
  }

  @override
  set pairingAnswer(int? value) {
    _$pairingAnswerAtom.reportWrite(value, super.pairingAnswer, () {
      super.pairingAnswer = value;
    });
  }

  late final _$pairingIdsAtom =
      Atom(name: '_QuestionViewModelBase.pairingIds', context: context);

  @override
  List<int> get pairingIds {
    _$pairingIdsAtom.reportRead();
    return super.pairingIds;
  }

  @override
  set pairingIds(List<int> value) {
    _$pairingIdsAtom.reportWrite(value, super.pairingIds, () {
      super.pairingIds = value;
    });
  }

  late final _$whiteBoardAtom =
      Atom(name: '_QuestionViewModelBase.whiteBoard', context: context);

  @override
  bool get whiteBoard {
    _$whiteBoardAtom.reportRead();
    return super.whiteBoard;
  }

  @override
  set whiteBoard(bool value) {
    _$whiteBoardAtom.reportWrite(value, super.whiteBoard, () {
      super.whiteBoard = value;
    });
  }

  late final _$selectedQuestionSortAtom = Atom(
      name: '_QuestionViewModelBase.selectedQuestionSort', context: context);

  @override
  int get selectedQuestionSort {
    _$selectedQuestionSortAtom.reportRead();
    return super.selectedQuestionSort;
  }

  @override
  set selectedQuestionSort(int value) {
    _$selectedQuestionSortAtom.reportWrite(value, super.selectedQuestionSort,
        () {
      super.selectedQuestionSort = value;
    });
  }

  late final _$trialQuestionCountAtom =
      Atom(name: '_QuestionViewModelBase.trialQuestionCount', context: context);

  @override
  int get trialQuestionCount {
    _$trialQuestionCountAtom.reportRead();
    return super.trialQuestionCount;
  }

  @override
  set trialQuestionCount(int value) {
    _$trialQuestionCountAtom.reportWrite(value, super.trialQuestionCount, () {
      super.trialQuestionCount = value;
    });
  }

  late final _$trialQuestionTimeAtom =
      Atom(name: '_QuestionViewModelBase.trialQuestionTime', context: context);

  @override
  int get trialQuestionTime {
    _$trialQuestionTimeAtom.reportRead();
    return super.trialQuestionTime;
  }

  @override
  set trialQuestionTime(int value) {
    _$trialQuestionTimeAtom.reportWrite(value, super.trialQuestionTime, () {
      super.trialQuestionTime = value;
    });
  }

  late final _$trialQuestionIdAtom =
      Atom(name: '_QuestionViewModelBase.trialQuestionId', context: context);

  @override
  int? get trialQuestionId {
    _$trialQuestionIdAtom.reportRead();
    return super.trialQuestionId;
  }

  @override
  set trialQuestionId(int? value) {
    _$trialQuestionIdAtom.reportWrite(value, super.trialQuestionId, () {
      super.trialQuestionId = value;
    });
  }

  late final _$trialQuestionSituationsAtom = Atom(
      name: '_QuestionViewModelBase.trialQuestionSituations', context: context);

  @override
  List<bool?> get trialQuestionSituations {
    _$trialQuestionSituationsAtom.reportRead();
    return super.trialQuestionSituations;
  }

  @override
  set trialQuestionSituations(List<bool?> value) {
    _$trialQuestionSituationsAtom
        .reportWrite(value, super.trialQuestionSituations, () {
      super.trialQuestionSituations = value;
    });
  }

  late final _$solvedQuestionsAtom =
      Atom(name: '_QuestionViewModelBase.solvedQuestions', context: context);

  @override
  ObservableList<int> get solvedQuestions {
    _$solvedQuestionsAtom.reportRead();
    return super.solvedQuestions;
  }

  @override
  set solvedQuestions(ObservableList<int> value) {
    _$solvedQuestionsAtom.reportWrite(value, super.solvedQuestions, () {
      super.solvedQuestions = value;
    });
  }

  late final _$passQuestionsAtom =
      Atom(name: '_QuestionViewModelBase.passQuestions', context: context);

  @override
  ObservableList<int> get passQuestions {
    _$passQuestionsAtom.reportRead();
    return super.passQuestions;
  }

  @override
  set passQuestions(ObservableList<int> value) {
    _$passQuestionsAtom.reportWrite(value, super.passQuestions, () {
      super.passQuestions = value;
    });
  }

  late final _$trialQuestionAnswersAtom = Atom(
      name: '_QuestionViewModelBase.trialQuestionAnswers', context: context);

  @override
  List<TrialQuestionAnswer> get trialQuestionAnswers {
    _$trialQuestionAnswersAtom.reportRead();
    return super.trialQuestionAnswers;
  }

  @override
  set trialQuestionAnswers(List<TrialQuestionAnswer> value) {
    _$trialQuestionAnswersAtom.reportWrite(value, super.trialQuestionAnswers,
        () {
      super.trialQuestionAnswers = value;
    });
  }

  late final _$finishTrialAsyncAction =
      AsyncAction('_QuestionViewModelBase.finishTrial', context: context);

  @override
  Future<void> finishTrial() {
    return _$finishTrialAsyncAction.run(() => super.finishTrial());
  }

  late final _$fetchTrialQuestionSituationsAsyncAction = AsyncAction(
      '_QuestionViewModelBase.fetchTrialQuestionSituations',
      context: context);

  @override
  Future<void> fetchTrialQuestionSituations(int trial_id) {
    return _$fetchTrialQuestionSituationsAsyncAction
        .run(() => super.fetchTrialQuestionSituations(trial_id));
  }

  late final _$pageTrialsAsyncAction =
      AsyncAction('_QuestionViewModelBase.pageTrials', context: context);

  @override
  Future<void> pageTrials() {
    return _$pageTrialsAsyncAction.run(() => super.pageTrials());
  }

  late final _$pageWrongsAsyncAction =
      AsyncAction('_QuestionViewModelBase.pageWrongs', context: context);

  @override
  Future<void> pageWrongs() {
    return _$pageWrongsAsyncAction.run(() => super.pageWrongs());
  }

  late final _$fetchTrialQuestionsAsyncAction = AsyncAction(
      '_QuestionViewModelBase.fetchTrialQuestions',
      context: context);

  @override
  Future<void> fetchTrialQuestions(int item_id, bool? trial_again) {
    return _$fetchTrialQuestionsAsyncAction
        .run(() => super.fetchTrialQuestions(item_id, trial_again));
  }

  late final _$fetchQuestionAsyncAction =
      AsyncAction('_QuestionViewModelBase.fetchQuestion', context: context);

  @override
  Future<void> fetchQuestion(int section_id, int unit_id) {
    return _$fetchQuestionAsyncAction
        .run(() => super.fetchQuestion(section_id, unit_id));
  }

  late final _$answerPageAsyncAction =
      AsyncAction('_QuestionViewModelBase.answerPage', context: context);

  @override
  Future<void> answerPage() {
    return _$answerPageAsyncAction.run(() => super.answerPage());
  }

  late final _$changeQuestionSortAsyncAction = AsyncAction(
      '_QuestionViewModelBase.changeQuestionSort',
      context: context);

  @override
  Future<void> changeQuestionSort(dynamic sort) {
    return _$changeQuestionSortAsyncAction
        .run(() => super.changeQuestionSort(sort));
  }

  late final _$handleAnswerAsyncAction =
      AsyncAction('_QuestionViewModelBase.handleAnswer', context: context);

  @override
  Future<bool> handleAnswer() {
    return _$handleAnswerAsyncAction.run(() => super.handleAnswer());
  }

  late final _$resetTestAsyncAction =
      AsyncAction('_QuestionViewModelBase.resetTest', context: context);

  @override
  Future<bool> resetTest() {
    return _$resetTestAsyncAction.run(() => super.resetTest());
  }

  late final _$cupToPageAsyncAction =
      AsyncAction('_QuestionViewModelBase.cupToPage', context: context);

  @override
  Future<void> cupToPage(TransitionModel transitions) {
    return _$cupToPageAsyncAction.run(() => super.cupToPage(transitions));
  }

  late final _$homePageAsyncAction =
      AsyncAction('_QuestionViewModelBase.homePage', context: context);

  @override
  Future<void> homePage() {
    return _$homePageAsyncAction.run(() => super.homePage());
  }

  late final _$questionReportAsyncAction =
      AsyncAction('_QuestionViewModelBase.questionReport', context: context);

  @override
  Future<bool> questionReport() {
    return _$questionReportAsyncAction.run(() => super.questionReport());
  }

  late final _$favoriteActionAsyncAction =
      AsyncAction('_QuestionViewModelBase.favoriteAction', context: context);

  @override
  Future<void> favoriteAction() {
    return _$favoriteActionAsyncAction.run(() => super.favoriteAction());
  }

  late final _$_QuestionViewModelBaseActionController =
      ActionController(name: '_QuestionViewModelBase', context: context);

  @override
  void addSolvedQuestion(int number) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.addSolvedQuestion');
    try {
      return super.addSolvedQuestion(number);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPassQuestion(int number) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.addPassQuestion');
    try {
      return super.addPassQuestion(number);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String findLastSecond() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.findLastSecond');
    try {
      return super.findLastSecond();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void timerStart({int? second = 0}) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.timerStart');
    try {
      return super.timerStart(second: second);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void timerStop() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.timerStop');
    try {
      return super.timerStop();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findAnswer() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.findAnswer');
    try {
      return super.findAnswer();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAnswer() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.removeAnswer');
    try {
      return super.removeAnswer();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findAnswerStatus() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.findAnswerStatus');
    try {
      return super.findAnswerStatus();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void answerChange(String value) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.answerChange');
    try {
      return super.answerChange(value);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void answerChangeOption(dynamic option) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.answerChangeOption');
    try {
      return super.answerChangeOption(option);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Items> shuffleList(List<Items> list) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.shuffleList');
    try {
      return super.shuffleList(list);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void splitItemsToArrays(List<Items> items) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.splitItemsToArrays');
    try {
      return super.splitItemsToArrays(items);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void errorContinue() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.errorContinue');
    try {
      return super.errorContinue();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool? pairingCheckError() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.pairingCheckError');
    try {
      return super.pairingCheckError();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAnswerEndLetter() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.removeAnswerEndLetter');
    try {
      return super.removeAnswerEndLetter();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
trialFinishLoading: ${trialFinishLoading},
errorLoading: ${errorLoading},
answerPageStatus: ${answerPageStatus},
whiteboardColor: ${whiteboardColor},
timer: ${timer},
secondsElapsed: ${secondsElapsed},
whiteboardDuster: ${whiteboardDuster},
questionModel: ${questionModel},
questionFavorite: ${questionFavorite},
answers: ${answers},
answerText: ${answerText},
answerTrueOrFalse: ${answerTrueOrFalse},
answerOption: ${answerOption},
section: ${section},
itemQuestions: ${itemQuestions},
itemAnswers: ${itemAnswers},
pairingQuestion: ${pairingQuestion},
pairingAnswer: ${pairingAnswer},
pairingIds: ${pairingIds},
whiteBoard: ${whiteBoard},
selectedQuestionSort: ${selectedQuestionSort},
trialQuestionCount: ${trialQuestionCount},
trialQuestionTime: ${trialQuestionTime},
trialQuestionId: ${trialQuestionId},
trialQuestionSituations: ${trialQuestionSituations},
solvedQuestions: ${solvedQuestions},
passQuestions: ${passQuestions},
trialQuestionAnswers: ${trialQuestionAnswers}
    ''';
  }
}
