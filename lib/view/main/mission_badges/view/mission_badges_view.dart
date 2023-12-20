import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_utilty/date.dart';
import 'package:numicorn_mobile/view/main/mission_badges/model/user_targets_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../_product/_widgets/container/app/app_container.dart';
import '../view_model/mission_badges_view_model.dart';

class MissionBadgesView extends StatelessWidget {
  const MissionBadgesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MissionBadgesViewModel>(
      viewModel: MissionBadgesViewModel(),
      onModelReady: (model) async {
        model.setContext(context);
        model.init();
        await model.fetchTargetsService();
      },
      onPageBuilder: (BuildContext context, MissionBadgesViewModel viewModel) =>
          DefaultTabController(
        length: 2,
        child: AppContainer(
          // skewColor: context.appColorOrange800,
          // backgroundColor: context.appColorOrange900,
          body: SafeArea(
            child: viewModel.loading
                ? Column(
                    children: [
                      buildHeader(context),
                      buildContent(context, viewModel),
                    ],
                  )
                : Container(),
          ),
        ),
      ),
    );
  }

  Container buildHeader(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: context.appColorGray.withOpacity(0.4),
                  ),
                ),
              ),
            ),
          ),
          TabBar(
            indicatorColor: Colors.white,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.white),
            ),
            tabs: [
              buildTabItem(context, 'Görevler'),
              buildTabItem(context, 'Rozetler'),
            ],
          ),
        ],
      ),
    );
  }

  Tab buildTabItem(BuildContext context, String text) {
    return Tab(
      icon: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontFamily: context.fontFamily600,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context, MissionBadgesViewModel viewModel) {
    return Container(
      height: context.height * 1.5,
      child: TabBarView(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 3),
                        child: Text(
                          viewModel.dataModel.monthText ?? '',
                          style: TextStyle(
                            color: context.appColorOrange900,
                            fontFamily: context.fontFamily700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          viewModel.dataModel?.target?.title ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontFamily: context.fontFamily600,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.schedule_outlined,
                              color: Colors.white60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                Now().day() + ' GÜN',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontFamily: context.fontFamily600,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: context.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Görevlerini tamamla',
                              style: TextStyle(
                                fontFamily: context.fontFamily600,
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15.0,
                                bottom: 10,
                              ),
                              child: LinearPercentIndicator(
                                width: context.width - 60,
                                lineHeight: 32.0,
                                padding: EdgeInsets.zero,
                                barRadius: Radius.circular(15),
                                percent:
                                    ((viewModel.dataModel.target?.targetSum ??
                                            0) /
                                        20),
                                backgroundColor: context.appColorGray,
                                progressColor: context.appColorOrange900,
                                center: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: context.appColorOrange1000,
                                      fontSize: 17,
                                      fontFamily: context.fontFamily600,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: viewModel
                                            .dataModel.target?.targetSum
                                            ?.toString(),
                                      ),
                                      TextSpan(
                                          text: ' / ',
                                          style: TextStyle(fontSize: 12)),
                                      TextSpan(
                                        text: '20',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: context.width,
                  height: context.height,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Günlük Görevler',
                          style: TextStyle(
                            fontFamily: context.fontFamily600,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              viewModel.dataModel.tasks!.taskLevels!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            TaskLevels taskLevel =
                                viewModel.dataModel.tasks!.taskLevels![index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.only(
                                right: 15.0,
                                top: 15,
                                bottom: 15,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: context.appColorGray.withOpacity(0.6),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Image.network(
                                      taskLevel
                                          .path!, //'asset/image/rocket_login.png',
                                      width: 50,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          taskLevel.title!,
                                          style: TextStyle(
                                            fontFamily: context.fontFamily600,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        LinearPercentIndicator(
                                          lineHeight: 25.0,
                                          padding: EdgeInsets.zero,
                                          barRadius: const Radius.circular(15),
                                          percent: (taskLevel.value! >
                                                      taskLevel!
                                                          .transactionDetail!
                                                          .toInt()
                                                  ? taskLevel.transactionDetail
                                                  : taskLevel.value)! /
                                              taskLevel.transactionDetail!,
                                          backgroundColor: context
                                              .appColorGray100
                                              .withOpacity(0.7),
                                          progressColor:
                                              context.appColorOrange900,
                                          center: RichText(
                                            textAlign: TextAlign.center,
                                            text: TextSpan(
                                              style: TextStyle(
                                                color:
                                                    context.appColorOrange1000,
                                                fontSize: 16,
                                                fontFamily:
                                                    context.fontFamily600,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: (taskLevel.value! >
                                                              taskLevel!
                                                                  .transactionDetail!
                                                                  .toInt()
                                                          ? taskLevel
                                                              .transactionDetail
                                                          : taskLevel.value)
                                                      .toString(),
                                                ),
                                                TextSpan(
                                                    text: ' / ',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                                TextSpan(
                                                  text: taskLevel!
                                                      .transactionDetail
                                                      .toString(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.dataModel.rosettes!.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    RosettesModel rosette =
                        viewModel.dataModel.rosettes![index];
                    return Container(
                      padding: EdgeInsets.all(15),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            rosette.target!.path!,
                            width: context.width * 0.12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    rosette.target!.language!.title!,
                                    style: TextStyle(
                                        fontFamily: context.fontFamily600,
                                        fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
