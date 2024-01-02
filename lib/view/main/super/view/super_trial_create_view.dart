import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/lang/locale_keys.g.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/_product/_widgets/input/fancy_text_input.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_sections_model.dart';
import 'package:numicorn_mobile/view/main/super/view_model/super_trial_create_view_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class SuperTrialCreateView extends StatelessWidget {
  const SuperTrialCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SuperTrialCreateViewModel>(
      viewModel: SuperTrialCreateViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.fetchTrialSection();
      },
      onPageBuilder:
          (BuildContext context, SuperTrialCreateViewModel viewModel) =>
              Scaffold(
        backgroundColor: context.appColor,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: context.appColor,
          ),
          padding: EdgeInsets.only(top: 12),
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        viewModel.timeController.text =
                            (viewModel.totalQuestionCount * 2).toString();

                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "Deneme Detayları",
                                  style: TextStyle(
                                    fontFamily: context.fontFamily500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              content: Form(
                                key: viewModel.formState,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: FancyTextInput(
                                        labelText: "Deneme İsmi",
                                        hintText: "",
                                        fieldController:
                                            viewModel.titleController,
                                        validation: (value) => value!.isNotEmpty
                                            ? null
                                            : LocaleKeys
                                                .form_validation_required
                                                .tr(),
                                        keyboardType: TextInputType.name,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: FancyTextInput(
                                        labelText: "Deneme Süresi",
                                        hintText: "",
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        fieldController:
                                            viewModel.timeController,
                                        validation: (value) => value!.isNotEmpty
                                            ? null
                                            : LocaleKeys
                                                .form_validation_required
                                                .tr(),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 38.0),
                                      child: FancyButton(
                                        child: SizedBox(
                                          width: context.width * 0.45,
                                          child: Center(
                                            child: !viewModel.trialCreateLoading
                                                ? Text(
                                                    "Başlat",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'PoppinsBold',
                                                    ),
                                                  )
                                                : const LoadingSpink(),
                                          ),
                                        ),
                                        size: 50,
                                        color: context.appColor,
                                        onPressed: () {
                                          viewModel.trialCreate();
                                          print("Press");
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "DENEMEYİ BAŞLAT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: context.fontFamily600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Observer(builder: (_) {
                      return Text(
                        "Süre: ${viewModel.totalQuestionCount * 2} dakika",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: context.fontFamily400,
                        ),
                      );
                    })
                  ],
                ),
                Positioned(
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Column(
                      children: [
                        Observer(builder: (_) {
                          return Text(
                            viewModel.totalQuestionCount.toString(),
                            style: TextStyle(
                              fontFamily: context.fontFamily500,
                              fontSize: 16,
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Observer(builder: (_) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  SuperHeader(
                    title: "Deneme Oluştur",
                    subTitle: "Matematikte Kendi Yolunuzu Çizin!",
                  ),
                  Container(
                    width: context.width,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.unitModel.length,
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: ((BuildContext context, index) {
                        return Column(
                          children: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount:
                                  viewModel.unitModel[index].sections!.length,
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemBuilder: (context, sectionIndex) {
                                SectionsModel section = viewModel
                                    .unitModel[index].sections![sectionIndex];
                                return Container(
                                  child: buildSectionItem(
                                    context,
                                    viewModel,
                                    index,
                                    sectionIndex,
                                    section,
                                  ),
                                );
                              },
                            )
                          ],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildSectionItem(
    BuildContext context,
    SuperTrialCreateViewModel viewModel,
    int index,
    int sectionIndex,
    SectionsModel section,
  ) {
    return Observer(builder: (_) {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: BoxDecoration(
              color: context.appColor, borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: context.width * 0.7,
                    child: Text(
                      section.title!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: context.fontFamily500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    viewModel.unitModel[index].title!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: context.fontFamily400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: buildCounter(
                      context,
                      viewModel,
                      title: "Kolay",
                      backgroundColor: context.appColorYellow,
                      counter: viewModel
                          .unitModel[index].sections![sectionIndex].easy,
                      onIncrement: () {
                        viewModel.incrementOrDecrement(
                            index, sectionIndex, 1, 1);
                      },
                      onDecrement: () {
                        viewModel.incrementOrDecrement(
                            index, sectionIndex, 1, -1);
                      },
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: buildCounter(
                      context,
                      viewModel,
                      title: "Orta",
                      backgroundColor: context.appColorGreen,
                      counter: viewModel
                          .unitModel[index].sections![sectionIndex].middle,
                      onIncrement: () {
                        viewModel.incrementOrDecrement(
                            index, sectionIndex, 2, 1);
                      },
                      onDecrement: () {
                        viewModel.incrementOrDecrement(
                            index, sectionIndex, 2, -1);
                      },
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: buildCounter(
                      context,
                      viewModel,
                      title: "Zor",
                      backgroundColor: context.appColorRed100,
                      counter: viewModel
                          .unitModel[index].sections![sectionIndex].hard,
                      onIncrement: () {
                        viewModel.incrementOrDecrement(
                            index, sectionIndex, 3, 1);
                      },
                      onDecrement: () {
                        viewModel.incrementOrDecrement(
                            index, sectionIndex, 3, -1);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  Widget buildCounter(
    BuildContext context,
    SuperTrialCreateViewModel viewModel, {
    required int counter,
    required String title,
    required Color backgroundColor,
    required Function onIncrement,
    required Function onDecrement,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 5,
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: context.fontFamily500,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: CounterApp(
                  onIncrement: () {
                    onIncrement();
                    if (viewModel.totalQuestionCount < 200) {
                      viewModel.totalQuestionCount += 1;
                    }
                  },
                  onDecrement: () {
                    onDecrement();
                    if (viewModel.totalQuestionCount > 0) {
                      viewModel.totalQuestionCount -= 1;
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterApp extends StatefulWidget {
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const CounterApp({Key? key, this.onIncrement, this.onDecrement})
      : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      if (counter < 40) {
        counter++;
        if (widget.onIncrement != null) {
          widget.onIncrement!();
        }
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
        if (widget.onDecrement != null) {
          widget.onDecrement!();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => decrementCounter(),
          child: Text(
            "-",
            style: TextStyle(
              fontSize: 20,
              fontFamily: context.fontFamily400,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
            child: Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 15,
                fontFamily: context.fontFamily500,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => incrementCounter(),
          child: Text(
            "+",
            style: TextStyle(
              fontSize: 20,
              fontFamily: context.fontFamily400,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class SuperHeader extends StatelessWidget {
  SuperHeader({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.height * 0.07, bottom: 8),
      decoration: BoxDecoration(
        color: context.appColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Container(
              width: context.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: context.fontFamily600,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontFamily: context.fontFamily400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 12,
              top: 3,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
