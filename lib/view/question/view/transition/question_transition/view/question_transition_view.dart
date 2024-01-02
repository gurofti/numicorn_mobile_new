import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view_model/question_transition_view_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../../core/extension/color_extension.dart';
import '../../../../../../core/extension/context_extension.dart';
import '../../../../../../core/extension/font_extension.dart';
import '../../../../../_product/_widgets/button/fancy_button.dart';

import 'package:numicorn_mobile/core/base/view/base_widget.dart';

class QuestionTransitionView extends StatelessWidget {
  QuestionTransitionView({
    Key? key,
    required this.content,
    this.continueButton,
    this.transitionModel,
    this.backPage,
    this.closeEvent,
    this.continueWidget,
  }) : super(key: key);
  Widget content;
  Function? continueButton;
  TransitionModel? transitionModel;
  bool? backPage = false;
  Function? closeEvent;
  Function? continueWidget;

  @override
  Widget build(BuildContext context) {
    return BaseView<QuestionTransitionViewModel>(
      viewModel: QuestionTransitionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.transitionModel = transitionModel;
      },
      onPageBuilder:
          (BuildContext context, QuestionTransitionViewModel viewModel) =>
              Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: context.appColor,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        body: Container(
          color: context.appColor,
          child: Stack(
            children: [
              Positioned(
                right: 15,
                top: 15,
                child: GestureDetector(
                  child: Icon(
                    Icons.close,
                    size: 28,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print(closeEvent);
                    if (closeEvent != null) {
                      print("fonksiyon var");
                      closeEvent!();
                      //closeEvent!();
                    } else {
                      print("fonksiyon yok");
                      viewModel.transitionPage();
                    }
                  },
                ),
              ),
              Positioned(
                bottom: context.height * 0.05,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: continueWidget != null
                      ? continueWidget!(viewModel.transitionPage)
                      : FancyButton(
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: context.width - 56,
                              child: Text(
                                transitionModel!.buttonText ?? "DEVAM ET",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: context.appColor,
                                  fontFamily: context.fontFamily600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            print("continue: ${continueButton.toString()}");
                            if (continueButton == null) {
                              print("null deger");
                              viewModel.transitionPage();
                            } else {
                              print("dolu deger");
                              continueButton!();
                            }
                          },
                          color: Colors.white,
                          size: 20,
                          radius: 22,
                        ),
                ),
              ),
              this.content,
            ],
          ),
        ),
      ),
    );
  }
}
