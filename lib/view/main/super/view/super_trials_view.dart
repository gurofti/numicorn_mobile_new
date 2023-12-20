import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/_product/_utilty/formatTimeAgo.dart';
import 'package:numicorn_mobile/view/_product/_utilty/timer.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink_app.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_response_model.dart';
import 'package:numicorn_mobile/view/main/super/view/super_statistics_view.dart';
import 'package:numicorn_mobile/view/main/super/view_model/super_trials_view_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class SuperTrialsView extends StatelessWidget {
  const SuperTrialsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SuperTrialsViewModel>(
      viewModel: SuperTrialsViewModel(),
      onModelReady: (model) async {
        model.setContext(context);
        model.init();
        await model.fetchTrials();
      },
      onPageBuilder: (BuildContext context, SuperTrialsViewModel viewModel) =>
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
                GestureDetector(
                  onTap: () {
                    viewModel.createTrial();
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "DENEME OLUŞTUR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: context.fontFamily600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Kolaydan Zora Özelleştirilmiş Sorularla!",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: context.fontFamily400,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          controller: viewModel.scrollController,
          child: Observer(builder: (_) {
            return !viewModel.trialsContainerLoading
                ? Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SuperHeader(
                          title: "Denemelerim",
                          subTitle: "Geçmişte Oluşturduğun Denemeler",
                        ),

                        // Text("leng:${viewModel.trialItems.length}"),
                        true
                            ? Column(
                                children: [
                                  Text(
                                    viewModel.trialsLoading.toString(),
                                    style: TextStyle(fontSize: 0),
                                  ),
                                  Text(
                                    viewModel.page.toString(),
                                    style: TextStyle(fontSize: 0),
                                  ),
                                  Observer(builder: (_) {
                                    return Text(
                                      viewModel.trialItems.length.toString(),
                                      style: TextStyle(fontSize: 0),
                                    );
                                  }),
                                  Container(
                                    width: context.width,
                                    color: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 20,
                                    ),
                                    child: Observer(builder: (_) {
                                      return ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: viewModel.trialItems.length,
                                        scrollDirection: Axis.vertical,
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        itemBuilder:
                                            ((BuildContext context, index) {
                                          if (index == 0) {
                                            print("test et ");
                                          }

                                          if ((index + 1) ==
                                                  viewModel.trialItems.length &&
                                              viewModel.trialsLoading) {
                                            return Center(
                                              child: LoadingSpinkPage(),
                                            );
                                          }

                                          TrialItemModel itemModel =
                                              viewModel.trialItems[index];

                                          return buildTrialItem(
                                              context, viewModel, itemModel);
                                        }),
                                      );
                                    }),
                                  ),
                                ],
                              )
                            // ignore: dead_code
                            : Container(
                                height: context.height,
                                color: Colors.white,
                                child: buildTrialNotFound(
                                  context,
                                  viewModel,
                                ),
                              ),
                      ],
                    ),
                  )
                : Container();
          }),
        ),
      ),
    );
  }

  Widget buildTrialItem(
    BuildContext context,
    SuperTrialsViewModel viewModel,
    TrialItemModel itemModel,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: context.appColor, borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemModel.title!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: context.fontFamily500,
                    fontSize: 16,
                  ),
                ),
                PopupMenuButton(
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onSelected: (value) {
                    // your logic
                  },
                  itemBuilder: (BuildContext bc) {
                    return [
                      PopupMenuItem(
                        child: Text(
                          "Yeniden Çöz",
                          style: TextStyle(
                            fontFamily: context.fontFamily400,
                            fontSize: 14.5,
                          ),
                        ),
                        value: '/hello',
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Deneme Sonucu",
                          style: TextStyle(
                            fontFamily: context.fontFamily400,
                            fontSize: 14.5,
                          ),
                        ),
                        value: '/about',
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Sil",
                          style: TextStyle(
                            fontFamily: context.fontFamily400,
                            fontSize: 14.5,
                          ),
                        ),
                        value: '/contact',
                      )
                    ];
                  },
                ),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Text(
                  "Toplam ${(int.parse(itemModel.passQuestionCount ?? "0") + int.parse(itemModel.trueQuestionCount ?? "0") + int.parse(itemModel.falseQuestionCount ?? "0")).toString()} soru çözdün",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: context.fontFamily400,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SuperStatisticsView().buildTrueOrFalse(
                  context,
                  title: "DOĞRU",
                  value: int.parse(itemModel.trueQuestionCount ?? "0"),
                  titleFontSize: 12,
                  valueFontSize: 35,
                ),
                SuperStatisticsView().buildTrueOrFalse(
                  context,
                  title: "YANLIŞ",
                  value: int.parse(itemModel.falseQuestionCount ?? "0"),
                  titleFontSize: 12,
                  valueFontSize: 35,
                ),
                SuperStatisticsView().buildTrueOrFalse(
                  context,
                  title: "BOŞ",
                  value: int.parse(itemModel.passQuestionCount ?? "0"),
                  titleFontSize: 12,
                  valueFontSize: 35,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Bitirme Süresi: ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: context.fontFamily400,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        findLastSecond(itemModel.finishTime ?? 0),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: context.fontFamily600,
                        ),
                      )
                    ],
                  ),
                  if (itemModel.updatedAt != null)
                    Text(
                      formatTimeAgo(itemModel.updatedAt!),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: context.fontFamily300,
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCounter(
    BuildContext context,
    SuperTrialsViewModel viewModel, {
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
    );
  }

  Widget buildTrialNotFound(
      BuildContext context, SuperTrialsViewModel viewModel) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset(
              'asset/super/not_found_trial.svg', // Burada kendi görselinizi ekleyin
              height: 200,
            ),
          ),
          Text(
            'İlk Denemeni Henüz Oluşturmadın!',
            style: TextStyle(
              fontSize: 20,
              fontFamily: context.fontFamily600,
              color: Color(0xFF003366),
            ),
            textAlign: TextAlign.center,
          ),
          // Text(
          //   'Matematik becerilerini geliştirmek için şimdi tam zamanı!',
          //   style: TextStyle(fontSize: 15, fontFamily: context.fontFamily400),
          //   textAlign: TextAlign.center,
          // ),
          SizedBox(height: 20),
          Text(
            'Kendi matematik denemeni oluşturarak pratik yapmaya başla. Kolay, orta ve zor seviyedeki sorularımızla matematik becerilerini kendi hızında geliştir!',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            child: Text(
              'Deneme Oluştur!',
              style: TextStyle(
                fontSize: 16,
                fontFamily: context.fontFamily500,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: context.appColor,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            onPressed: () {
              viewModel.createTrial();
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void listener() {
    print("scroll");
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
