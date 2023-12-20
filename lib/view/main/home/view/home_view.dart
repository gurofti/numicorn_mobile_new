import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/app/app_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/potion/potion_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/star/start_widget.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import 'package:numicorn_mobile/view/main/home/model/account_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  FinishPage finishPage;
  HomeView({Key? key, required this.finishPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.finishPage =
            finishPage ?? FinishPage(page: NavigationConstants.HOME, y: 0);
      },
      onPageBuilder: (BuildContext context, HomeViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildHeaderItem(
                context,
                viewModel,
                'series',
                viewModel.account?.series.toString() ?? '0',
                viewModel.account?.series != 0
                    ? viewModel.account?.seriesWarning == true
                        ? 0.5
                        : 1
                    : 1,
              ),
              buildHeaderItem(context, viewModel, 'diamond',
                  viewModel.account?.diamond.toString() ?? '0', 1),
              buildHeaderItem(context, viewModel, 'heart',
                  viewModel.account?.heart.toString() ?? '0', 1),
              // buildHeaderItem(
              //   context,
              //   viewModel,
              //   'star',
              //   viewModel.account?.star.toString() ?? '0',
              // ),
            ],
          ),
        ),
        body: Observer(builder: (_) {
          return SingleChildScrollView(
            controller: viewModel.scrollController,
            child: buildHomeContent(context, viewModel),
          );
        }),
      ),
    );
  }

  Column buildHomeContent(BuildContext context, HomeViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: viewModel.units.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return buildUnitItem(context, viewModel, index);
          },
        ),
      ],
    );
  }

  Positioned buildSkewContainer(
      BuildContext context, double left, double right) {
    return Positioned.fill(
      top: 0,
      bottom: 0,
      left: left,
      right: right,
      child: Transform(
        transform: Matrix4.skewX(-0.45),
        child: Container(
          color: context.appColor600.withOpacity(0.7),
        ),
      ),
    );
  }

  Widget buildUnitItem(
      BuildContext context, HomeViewModel viewModel, int index) {
    return Column(
      children: [
        Container(
          width: context.width,
          // alignment: Alignment.centerLeft,
          child: Stack(
            children: [
              Positioned.fill(
                child: Row(
                  children: [Star(), Star()],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (viewModel.units[index].title.toString()),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          (viewModel.units[index].description.toString()),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      child: Icon(
                        Icons.menu_book,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          color: Colors.white,
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            children: [
              for (int x = 0;
                  x < viewModel.units[index].sections!.length;
                  x++) ...[
                StaggeredGridTile.count(
                  crossAxisCellCount:
                      viewModel.units[index].sections![x].gridCross ?? 1,
                  mainAxisCellCount: 1.4,
                  child: buildPotionContainer(
                      context, viewModel, viewModel.units[index].sections![x]),
                ),
              ],
            ],
          ),
        ),
        // ListView.builder(
        //   physics: const NeverScrollableScrollPhysics(),
        //   itemCount: viewModel.units[index].sections?.length ?? 0,
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   itemBuilder: (BuildContext context, int sectionImdex) {
        //     return buildPotionContainer(context, viewModel,
        //         viewModel.units[index].sections![sectionImdex]);
        //   },
        // ),
      ],
    );
  }

  Widget buildPotionContainer(
      BuildContext context, HomeViewModel viewModel, Sections data) {
    return Container(
      color: Colors.white,
      child: PotionContainer(
        image: data!.path,
        title: data.title.toString(),
        completed: (int.parse(data.lessonCompleted!)).toString(),
        lessons: data.lessons!,
        sectionIconWidth: data.width != null ? double.parse(data.width!) : null,
        sectionIconHeight:
            data.height != null ? double.parse(data.height!) : null,
        onTapUp: (p0) {
          showModalBottomSheet(
            backgroundColor: context.appColor,
            barrierColor: Colors.black38,
            elevation: 0,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            // isDismissible: true,
            builder: (BuildContext context) {
              return DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.43,
                maxChildSize: 0.43,
                minChildSize: 0.43,
                //expand: true,
                builder: (context, _) {
                  return Stack(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.width * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Observer(builder: (_) {
                                return Container(
                                  padding: EdgeInsets.only(
                                    top: 15,
                                    left: context.width * 0.01,
                                    right: context.width * 0.01,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Observer(builder: (_) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              viewModel.selectedLevelText,
                                              style: const TextStyle(
                                                fontFamily: 'PoppinsBold',
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                              ),
                                            )
                                          ],
                                        );
                                      }),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 6.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Seviye Seçiniz',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontFamily:
                                                    context.fontFamily500,
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'Ders: ',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          context.fontFamily500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: (int.parse(data
                                                            .lessonCompleted!))
                                                        .toString(),
                                                    style: TextStyle(
                                                      letterSpacing: 1,
                                                      fontFamily:
                                                          context.fontFamily500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '/',
                                                    style: TextStyle(
                                                      letterSpacing: 1,
                                                      fontFamily:
                                                          context.fontFamily400,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        data.lessons.toString(),
                                                    style: TextStyle(
                                                      fontFamily:
                                                          context.fontFamily500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        viewModel.selectedLevelId.toString() +
                                            viewModel.selectedLevelText
                                                .toString(),
                                        style: TextStyle(fontSize: 0),
                                      ),
                                      Observer(builder: (_) {
                                        return Container(
                                          margin: EdgeInsets.only(
                                              top: 8, bottom: 15),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 1.5,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: buildLesonLevelItem(
                                                  context,
                                                  viewModel,
                                                  data,
                                                  title: 'Kolay',
                                                  level: 1,
                                                ),
                                              ),
                                              Expanded(
                                                child: buildLesonLevelItem(
                                                  context,
                                                  viewModel,
                                                  data,
                                                  title: 'Orta',
                                                  level: 2,
                                                ),
                                              ),
                                              Expanded(
                                                child: buildLesonLevelItem(
                                                  context,
                                                  viewModel,
                                                  data,
                                                  title: 'Zor',
                                                  level: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    ],
                                  ),
                                );
                              }),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      // borderRadius: BorderRadius.vertical(
                                      //   top: Radius.circular(20),
                                      // ),
                                      ),
                                  child: FancyButton(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 6,
                                      ),
                                      width: context.width * 0.6,
                                      child: Text(
                                        "BAŞLAT",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: context.appColor,
                                          fontSize: 17,
                                          fontFamily: 'PoppinsBold',
                                        ),
                                      ),
                                    ),
                                    size: 18,
                                    radius: 40.0,
                                    color: Colors.white,
                                    onPressed: () =>
                                        viewModel.questionPage(data),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  String findStartText(HomeViewModel viewModel, Sections data) {
    String finishText = 'Sorulara Yeniden Göz Atın!';
    if (viewModel.selectedLevelId == 1) {
      return data.levelEasyCompleted == data.levelEasy
          ? finishText
          : "Kolay Sorular: Güveninizi Artırın!";
    } else if (viewModel.selectedLevelId == 2) {
      return data.levelMiddleCompleted == data.levelMiddle
          ? finishText
          : "Orta Seviye: Bilgilerinizi Derinleştirin!";
    } else if (viewModel.selectedLevelId == 3) {
      return data.levelHardCompleted == data.levelHard
          ? finishText
          : "Zorluklarla Yüzleşin: Zor Testler Bekliyor!";
    }
    return "";
  }

  Positioned buildYellowSkewContainer(
      BuildContext context, double left, double right) {
    return Positioned.fill(
      top: 0,
      bottom: 0,
      left: left,
      right: right,
      child: Transform(
        transform: Matrix4.skewX(-0.45),
        child: Container(
          color: context.appColor200.withOpacity(0.5),
        ),
      ),
    );
  }

  BoxDecoration buildHeaderBoxDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          context.appColor,
          context.appColor,
          context.appColor,
        ],
        begin: Alignment(-0.7, 12),
        end: Alignment(1, -2),
      ),
    );
  }

  Widget buildHeaderItem(
    BuildContext context,
    HomeViewModel viewModel,
    String iconPath,
    String value,
    double opacity,
  ) {
    return Container(
      decoration: BoxDecoration(
          // border: Border.all(
          //   color: Colors.white.withOpacity(0.8),
          //   width: 1.5,
          // ),
          // borderRadius: const BorderRadius.all(
          //   Radius.circular(10),
          // ),
          ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      child: Opacity(
        opacity: opacity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'asset/home/' +
                  iconPath +
                  '.svg', //'asset/image/rocket_login.png',
              fit: BoxFit.fill,
              width: iconPath == 'series'
                  ? context.width * 0.05
                  : context.width * 0.075,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                value,
                style: TextStyle(
                  fontFamily: context.fontFamily600,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildLesonLevelItem(
    BuildContext context,
    HomeViewModel viewModel,
    Sections data, {
    required String title,
    required int level,
  }) {
    viewModel.selectedLevelText = findStartText(viewModel, data);

    return GestureDetector(
      onTap: () {
        viewModel.selectedLevelId = level;
        viewModel.selectedLevelText = findStartText(viewModel, data);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: viewModel.selectedLevelId == level
              ? Colors.white
              : Colors.transparent,
          border: level == 2
              ? const Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                )
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 17,
            fontFamily: context.fontFamily600,
            color: viewModel.selectedLevelId == level
                ? context.appColor
                : Colors.white,
          ),
        ),
      ),
    );
  }

  openSeriesWarning(BuildContext context, AccountModel accountModel,
      Function seriesContinue, bool diamondLoading, accountSeriesRefresh) {
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
                                    'Elmaslarını Kullan,',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 18,
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
                                            'Seri yaşam, her gün bir adım daha ileri gitmek gibidir. Daha fazla deneyim ve beceri kazanmak için kararlılıkla devam et, çünkü her gün yeni bir başlangıçtır.'),
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
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (accountModel!.diamond!.toInt() >=
                                            100) {
                                          await seriesContinue();
                                        } else {
                                          print("ELMAS BİTMİŞ");
                                        }
                                      },
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 15),
                                        margin: EdgeInsets.only(right: 4),
                                        decoration: BoxDecoration(
                                          border: const Border(
                                            left: BorderSide(
                                                color: Colors.white,
                                                width: 1.3),
                                            right: BorderSide(
                                                color: Colors.white,
                                                width: 1.3),
                                            top: BorderSide(
                                                color: Colors.white,
                                                width: 1.3),
                                            bottom: BorderSide(
                                                color: Colors.white, width: 7),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: buildHeartOptionItem(
                                          context,
                                          text:
                                              'Serindeki Serüveni Daima Sürdür!',
                                          buy: false,
                                        ),
                                      ),
                                    ),
                                  ),
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
                          onPressed: () async {
                            print(accountSeriesRefresh);
                            await accountSeriesRefresh();
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
          child: SvgPicture.asset(
            'asset/home/series.svg', //'asset/image/rocket_login.png',
            fit: BoxFit.fill,
            height: context.height * 0.06,
          ),
        ),
        SizedBox(height: context.height * 0.01),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: context.fontFamily600,
              fontSize: 16,
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
}
