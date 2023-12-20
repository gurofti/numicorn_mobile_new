import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_widgets/board/whiteBoard.dart';
import 'package:numicorn_mobile/view/_product/_widgets/progress/linear_percent_indicator.dart';
import 'package:numicorn_mobile/view/_product/_widgets/transition/transition_page.dart';
import 'package:numicorn_mobile/view/_product/_widgets/willPopScope/will_pop_scope.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/view/different_types/calculator/calculator_question.dart';
import 'package:numicorn_mobile/view/question/view/different_types/optional/optional_question.dart';
import 'package:numicorn_mobile/view/question/view/different_types/pairing/pairing_question.dart';
import 'package:whiteboard/whiteboard.dart';
import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../view_model/question_view_model.dart';
import 'different_types/true_or_false/true_or_false_question.dart';
import 'package:loading_indicator/loading_indicator.dart';

class QuestionView extends StatelessWidget {
  Sections section;
  QuestionView(this.section, {Key? key}) : super(key: key);

  String findQuestionTitleByType(int type) {
    if (type == 1) {
      return 'Cevabı tuşlayın!';
    } else if (type == 3) {
      return 'Birbiriyle eşleştir!';
    } else if (type == 4) {
      return 'Birbiriyle eşleştir!';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<QuestionViewModel>(
      viewModel: QuestionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.section = section;
        model.fetchQuestion(this.section.id as int, this.section.unitId as int);
        print("last second: " + section.level.toString());
        model.timerStart(second: section.lastSecond ?? 0);
      },
      onPageBuilder: (BuildContext context, QuestionViewModel viewModel) =>
          Observer(builder: (_) {
        print("question id: " + viewModel.questionModel.id.toString());
        print("user heart: " + viewModel.questionModel.heart.toString());
        print(viewModel.questionModel.is_image.toString());
        return viewModel.loading
            ? Stack(
                children: [
                  CustomWillPopScope(
                    action: () {
                      viewModel.timerStop();
                      viewModel.resetTest();
                      print("test et");
                    },
                    onWillPop: true,
                    child: Scaffold(
                      appBar: AppBar(
                        toolbarHeight: 0,
                        systemOverlayStyle: const SystemUiOverlayStyle(
                          statusBarIconBrightness: Brightness.light,
                          statusBarBrightness: Brightness.light,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      body: SafeArea(
                        child: Observer(builder: (_) {
                          return SizedBox(
                            width: context.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildStatusContainer(context, viewModel),
                                // Question Image
                                if (viewModel.questionModel.type == 1 ||
                                    viewModel.questionModel.type == 2 ||
                                    viewModel.questionModel.type == 4)
                                  buildQuestionContainer(
                                      viewModel.questionModel, context),
                                Column(
                                  children: [
                                    // Question Answer Of Keyword
                                    if (viewModel.questionModel.type == 1)
                                      buildContentContainer(context, viewModel),
                                    if (viewModel.questionModel.type != 3)
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        width: context.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (viewModel
                                                .questionModel.answer_status!)
                                              GestureDetector(
                                                onTap: () async {
                                                  await viewModel.answerPage();
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) =>
                                                  //         QuestionAnswerView(), //  FinishLessonPage(), // TreasurePage(), // DailySeriesPage(), // QuestionAnswerPage(),
                                                  //   ),
                                                  // );
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Icon(
                                                    Icons.tungsten_rounded,
                                                    size: 28,
                                                    color: context.appColor,
                                                  ),
                                                ),
                                              ),
                                            GestureDetector(
                                              onTap: () {
                                                viewModel.whiteBoard =
                                                    !viewModel.whiteBoard;
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                size: 28,
                                                color: viewModel.whiteBoard
                                                    ? context.appColorPink500
                                                    : context.appColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Container(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Stack(
                                        children: [
                                          buildQuestionAction(
                                            context,
                                            viewModel,
                                            viewModel.questionModel.type!,
                                            viewModel.handleAnswer,
                                            viewModel.errorContinue,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: -3,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Observer(builder: (_) {
                      return Visibility(
                        visible: viewModel.whiteBoard,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: 1,
                          child: Container(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                      color: context.appColorGray,
                                      width: 3,
                                    )),
                                  ),
                                  child: Observer(builder: (_) {
                                    return WhiteBoard(
                                      backgroundColor:
                                          Colors.black.withOpacity(0.6),
                                      strokeColor: viewModel.whiteboardColor,
                                      isErasing: viewModel.whiteboardDuster,
                                      controller:
                                          viewModel.whiteBoardController,
                                    );
                                  }),
                                ),
                                Positioned.fill(
                                  right: 0,
                                  top: 0,
                                  left: 0,
                                  bottom: 0,
                                  child: WhiteBoardWidget(
                                    viewModel: viewModel,
                                    changeColor: (Color color) {
                                      viewModel.whiteboardColor = color;
                                    },
                                    closeBoard: () {
                                      print("whiteBoard" +
                                          viewModel.whiteBoard.toString());
                                      viewModel.whiteBoard = false;
                                    },
                                    duster: () {
                                      viewModel.whiteboardDuster =
                                          !viewModel.whiteboardDuster;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              )
            : TransitionPage();
      }),
    );
  }

  Container buildQuestionContainer(
      QuestionModel questionModel, BuildContext context) {
    return Container(
      child: questionModel.is_image!
          ? ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
              child: CachedNetworkImage(
                repeat: ImageRepeat.repeat,
                imageUrl: questionModel!.path as String,
                placeholder: (context, url) => SizedBox(
                  width: context.width * 0.4,
                  child: Opacity(
                    opacity: 0.1,
                    child: LoadingIndicator(
                      indicatorType: Indicator.values[14],
                      strokeWidth: 3,
                      // pathBackgroundColor: Colors.black45,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) {
                  return Icon(Icons.error);
                },
              ),
            )
          : Text(
              questionModel.value!,
              style: TextStyle(
                fontFamily: context.fontFamily600,
                fontSize: 28,
              ),
            ),
    );
  }

  buildQuestionAction(
    BuildContext context,
    QuestionViewModel viewModel,
    int questionType,
    onClick,
    errorContinue,
  ) {
    switch (questionType) {
      case 1:
        return CalculatorQuestion(viewModel: viewModel);
      case 2:
        return TrueOrFalseQuestion(viewModel: viewModel);
      case 3:
        return PairingQuestion(viewModel: viewModel);
      case 4:
        return OptionalQuestion(viewModel: viewModel);
      default:
    }
  }

  Padding buildStatusContainer(
      BuildContext context, QuestionViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: context.width * 0.8,
                  child: LinearPercentIndicator(
                    lineHeight: 25.0,
                    padding: EdgeInsets.zero,
                    animation: true,
                    animationDuration: 300,
                    barRadius: Radius.circular(15),
                    percent: viewModel.questionModel.solvedTotal! /
                        viewModel.questionModel.questionTotal!,
                    backgroundColor: context.appColorGray.withOpacity(0.5),
                    progressColor: context.appColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  viewModel.resetTest();
                  viewModel.homePage();
                },
                child: const Icon(
                  Icons.close_sharp,
                  size: 32,
                ),
              ),
            ],
          ),
          if (viewModel.questionModel.is_repeat == true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Icon(
                      Icons.circle,
                      color: context.appColor,
                      size: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      "ÖNCEKİ HATA",
                      style: TextStyle(
                        color: context.appColor,
                        fontFamily: context.fontFamily600,
                        fontSize: 13,
                      ),
                    ),
                  )
                ],
              ),
            ),
          Container(
            padding: EdgeInsets.only(top: 15),
            width: context.width,
            alignment: Alignment.center,
            child: Text(
              findQuestionTitleByType(
                viewModel.questionModel.type!,
              ),
              style: TextStyle(
                fontSize: 20,
                fontFamily: context.fontFamily600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContentContainer(
      BuildContext context, QuestionViewModel viewModel) {
    List<String> litems = [];
    List<String> signItems = ["-", "+"];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 70,
            //   alignment: Alignment.center,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       ListView.builder(
            //         itemCount: litems.length,
            //         scrollDirection: Axis.horizontal,
            //         shrinkWrap: true,
            //         itemBuilder: (context, index) {
            //           bool signType = signItems.contains(litems[index]);
            //           return Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 6),
            //             child: Text(
            //               litems[index].toString(),
            //               style: TextStyle(
            //                   fontFamily: signType
            //                       ? context.fontFamily600
            //                       : context.fontFamily500,
            //                   fontSize: 42,
            //                   color: !signType ? null : context.appColor),
            //             ),
            //           );
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //   child: Text(
            //     '',
            //     style: TextStyle(
            //       fontSize: 42,
            //       fontFamily: context.fontFamily600,
            //       color: context.appColor,
            //     ),
            //   ),
            // ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.appColorLight,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              constraints: BoxConstraints(minWidth: context.width * 0.15),
              child: Text(
                viewModel.answerText != '' ? viewModel.answerText : '...',
                style: TextStyle(
                  fontSize: 33,
                  fontFamily: context.fontFamily600,
                  color: context.appColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
