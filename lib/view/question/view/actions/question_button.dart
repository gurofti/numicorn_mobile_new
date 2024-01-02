import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/core/init/lang/locale_keys.g.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/header/auth_container_header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/input/fancy_text_input.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/navigation/navigation.dart';
import 'package:numicorn_mobile/view/question/view_model/question_view_model.dart';
import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../_product/_widgets/button/fancy_button.dart';
import '../../../../core/extension/context_extension.dart';

class QuestionButton extends StatelessWidget {
  QuestionButton({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  QuestionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: context.width,
          child: Row(
            children: [
              if (viewModel.trialQuestionId != null)
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: context.width * 0.02),
                    child: FancyButton(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        width: context.width * 0.3,
                        child: Text(
                          viewModel.section.trialResult == null
                              ? 'BİTİR'
                              : 'KAPAT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: context.fontFamily600,
                          ),
                        ),
                      ),
                      size: 18,
                      radius: 30.0,
                      color: Colors.red,
                      onPressed: () async {
                        if (viewModel.section.trialResult == true) {
                          return await viewModel.pageTrials();
                        }
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Denemeyi Sonlandır!",
                                style: TextStyle(
                                  fontFamily: context.fontFamily500,
                                  fontSize: 18,
                                ),
                              ),
                              backgroundColor: Colors.white,
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    child: Text(
                                      "Sınavı sonlandırmak istediğinize emin misiniz?",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 38.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: FancyButton(
                                            child: SizedBox(
                                              child: Center(
                                                child: Text(
                                                  "İPTAL",
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                    fontFamily: 'PoppinsBold',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            size: 50,
                                            color: Colors.red,
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: FancyButton(
                                            child: SizedBox(
                                              child: Center(
                                                child: Text(
                                                  "BİTİR",
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                    fontFamily: 'PoppinsBold',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            size: 50,
                                            color: context.appColor,
                                            onPressed: () async {
                                              print("finish trial");
                                              await viewModel.finishTrial();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              Expanded(
                flex: 2,
                child: FancyButton(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 20,
                    ),
                    child: Text(
                      'DEVAM ET',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: context.fontFamily600,
                      ),
                    ),
                  ),
                  size: 18,
                  radius: 30.0,
                  color: !viewModel.findAnswerStatus()
                      ? Colors.grey
                      : context.appColor,
                  onPressed: () async {
                    if (viewModel.trialQuestionId == null) {
                      if (viewModel.questionModel!.heart == null ||
                          viewModel.questionModel!.heart! <= 0) {
                        return rightToLifeShowModal(context);
                      }
                      if (viewModel.findAnswerStatus()) {
                        if (!await viewModel.handleAnswer()) {
                          wrongShowModal(context);
                        }
                      }
                    } else {
                      await viewModel.handleAnswer();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future<dynamic> rightToLifeShowModal(
    BuildContext context,
  ) {
    return showModalBottomSheet(
      backgroundColor: context.appColor,
      barrierColor: Colors.black38,
      elevation: 0,
      context: context,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      // isDismissible: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.9,
          maxChildSize: 0.9,
          minChildSize: 0.9,
          //expand: true,
          builder: (context, scrollController) {
            return Stack(
              children: [
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: context.width * 0.85,
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: context.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Canların Bitti!',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: context.fontFamily500,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Daha fazla deneyim ve beceri kazanmak için elmaslarını kullanabilir ya da sınırsız can alabilirsin.'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    margin: EdgeInsets.only(right: 4),
                                    decoration: BoxDecoration(
                                      border: const Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 1.3),
                                        right: BorderSide(
                                            color: Colors.white, width: 1.3),
                                        top: BorderSide(
                                            color: Colors.white, width: 1.3),
                                        bottom: BorderSide(
                                            color: Colors.white, width: 7),
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: buildHeartOptionItem(
                                      context,
                                      text: 'Can Yükle',
                                      buy: false,
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    margin: EdgeInsets.only(left: 4),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        left: BorderSide(
                                            color: Colors.yellow, width: 4),
                                        right: BorderSide(
                                            color: Colors.yellow, width: 4),
                                        top: BorderSide(
                                            color: Colors.yellow, width: 4),
                                        bottom: BorderSide(
                                            color: Colors.yellow, width: 15),
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: buildHeartOptionItem(
                                      context,
                                      text: 'Satın Al',
                                      buy: true,
                                    ),
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: FancyButton(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            width: context.width * 0.85,
                            child: Text(
                              'HAYIR, TEŞEKKÜRLER'.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: context.appColor,
                                fontSize: 17,
                                fontFamily: 'PoppinsBold',
                              ),
                            ),
                          ),
                          size: 18,
                          radius: 30.0,
                          color: Colors.white,
                          onPressed: () {
                            viewModel.errorContinue();
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Column buildHeartOptionItem(BuildContext context,
      {required String text, required bool buy}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'asset/general/heart.png',
            fit: BoxFit.fill,
            height: context.height * 0.08,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: context.fontFamily600,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        !buy
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'asset/home/diamond.svg', //'asset/image/rocket_login.png',
                    fit: BoxFit.fill,
                    width: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '100 Elmas',
                      style: TextStyle(
                        fontFamily: context.fontFamily600,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            : Text(
                '₺ 19.99',
                style: TextStyle(
                  fontFamily: context.fontFamily600,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
      ],
    );
  }

  Future<dynamic> wrongShowModal(
    BuildContext context,
  ) {
    return showModalBottomSheet(
      backgroundColor: Colors.red,
      barrierColor: Colors.black38,
      elevation: 0,
      context: context,
      isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      // isDismissible: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.35,
          maxChildSize: 0.35,
          minChildSize: 0.35,
          //expand: true,
          builder: (context, scrollController) {
            return Stack(
              children: [
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: context.width * 0.85,
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: context.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Yanlış Cevap',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        backgroundColor: Colors.white,
                                        barrierColor: Colors.black38,
                                        elevation: 0,
                                        context: context,
                                        isDismissible: true,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20),
                                          ),
                                        ),
                                        // isDismissible: true,
                                        builder: (BuildContext context) {
                                          return DraggableScrollableSheet(
                                            expand: false,
                                            initialChildSize: 0.6,
                                            maxChildSize: 0.6,
                                            minChildSize: 0.6,
                                            //expand: true,
                                            builder:
                                                (context, scrollController) {
                                              return buildErrorForm(
                                                  context, viewModel);
                                            },
                                          );
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.flag_outlined,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Sana bu soruyu tekrar soracağım'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: FancyButton(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                width: context.width * 0.85,
                                child: Text(
                                  'Devam Et'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 17,
                                    fontFamily: 'PoppinsBold',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          size: 18,
                          radius: 30.0,
                          color: Colors.white,
                          onPressed: () {
                            viewModel.errorContinue();
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Form buildErrorForm(BuildContext context, QuestionViewModel viewModel) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              right: 18,
              top: 3,
              child: GestureDetector(
                child: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthContainerHeader(header: "Hata Bildir"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: FancyTextInput(
                    labelText: 'Açıklama',
                    hintText: '........',
                    fieldController: viewModel.reportExplainController,
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: FancyButton(
                    child: SizedBox(
                      width: context.width * 0.6,
                      child: Center(
                        child: !viewModel.errorLoading
                            ? Text(
                                "Gönder",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'PoppinsBold',
                                ),
                              )
                            : const LoadingSpink(),
                      ),
                    ),
                    size: 50,
                    color: context.appColor,
                    onPressed: () async {
                      await viewModel.questionReport();
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
