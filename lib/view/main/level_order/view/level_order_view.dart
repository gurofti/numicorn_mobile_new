import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_utilty/country_flag.dart';
import 'package:numicorn_mobile/view/_product/_utilty/number_helper.dart';
import 'package:numicorn_mobile/view/main/level_order/model/leaders_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../_product/_widgets/container/app/app_container.dart';
import '../view_model/level_order_view_model.dart';

class LevelOrderView extends StatelessWidget {
  const LevelOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LevelOrderViewModel>(
      viewModel: LevelOrderViewModel(),
      onModelReady: (model) async {
        model.setContext(context);
        model.init();
        await model.fetchLeadersService();
      },
      onPageBuilder: (BuildContext context, LevelOrderViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: buildHeader(context),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Lottie.network(
                            'https://assets2.lottiefiles.com/packages/lf20_qsepfuxs.json',
                            width: context.width,
                          ),
                        ),
                      ),
                      viewModel.loading
                          ? buildContent(context, viewModel)
                          : Container(
                              height: context.height,
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // border: Border(
          //   bottom: BorderSide(
          //     color: context.appColorGray,
          //   ),
          // ),
          ),
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text(
          'Liderler Sıralaması',
          style: TextStyle(
            fontFamily: context.fontFamily600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context, LevelOrderViewModel viewModel) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              buildBesUserContainer(context, viewModel),
              Positioned(
                bottom: -4,
                child: SvgPicture.asset(
                  'asset/levels/tag.svg',
                  width: context.width * 0.3,
                ),
              ),
            ],
          ),
          buildSubUserContainer(context, viewModel)
        ],
      ),
    );
  }

  Stack buildSubUserContainer(
      BuildContext context, LevelOrderViewModel viewModel) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: context.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          decoration: BoxDecoration(
            color: context.appColorLight,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.leaders.length - 3,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  DataModel leader = viewModel.leaders[index + 3];
                  return buildSubUserItem(
                      context, leader, viewModel, (index + 4).toString());
                },
              ),
            ],
          ),
        ),
        Positioned(
          child: Container(
            width: 10,
            height: 10,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.appColor,
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
          ),
        )
      ],
    );
  }

  Container buildSubUserItem(BuildContext context, DataModel leader,
      LevelOrderViewModel viewModel, String level) {
    return Container(
      width: context.width,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: context.width * 0.07,
                height: context.width * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: context.appColorGray, width: 2),
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                child: Text(
                  level,
                  style: TextStyle(
                    fontFamily: context.fontFamily500,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: buildImageContainer(leader, context, viewModel),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    leader.name! + " " + leader.surname!,
                    style: TextStyle(
                      fontFamily: context.fontFamily600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    leader.cup!.toString() + ' Başarı Puanı',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CountryFlag.fromLanguageCode(
              CountryFlagHelper.findCodeById(leader.country!),
              width: context.width * 0.07,
              height: context.width * 0.07,
            ),
            // child: Image.network(
            //   'https://cdn-icons-png.flaticon.com/512/555/555613.png',
            //   fit: BoxFit.cover,
            //   height: context.width * 0.07,
            // ),
          ),
        ],
      ),
    );
  }

  Row buildBesUserContainer(
    BuildContext context,
    LevelOrderViewModel viewModel,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            buildBestUserInfo(
              context,
              viewModel,
              viewModel.leaders[1],
              cubColor: Colors.black45,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SvgPicture.asset(
                  'asset/levels/left.svg',
                  width: context.width * 0.28,
                ),
                Positioned(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: context.height * 0.1,
                      fontFamily: context.fontFamily600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            buildBestUserInfo(
              context,
              viewModel,
              viewModel.leaders[0],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SvgPicture.asset(
                  'asset/levels/center.svg',
                  width: context.width * 0.3,
                ),
                Positioned(
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: context.height * 0.12,
                      fontFamily: context.fontFamily600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            buildBestUserInfo(context, viewModel, viewModel.leaders[2],
                cubColor: Colors.brown),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SvgPicture.asset(
                  'asset/levels/right.svg',
                  width: context.width * 0.28,
                ),
                Positioned(
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: context.height * 0.075,
                      fontFamily: context.fontFamily600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Container buildBestUserInfo(
      BuildContext context, LevelOrderViewModel viewModel, DataModel leader,
      {Color? cubColor}) {
    return Container(
      padding: EdgeInsets.only(
        bottom: context.height * 0.05,
      ),
      child: Column(
        children: [
          // SvgPicture.asset(
          //   'asset/navigation/cup.svg',
          //   width: context.width * 0.08,
          //   color: cubColor,
          // ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(context.width * 0.3),
                      child: buildImageContainer(leader, context, viewModel,
                          width: 0.18),
                    ),
                  ),
                  Positioned(
                    right: 2,
                    bottom: 2,
                    child: CountryFlag.fromLanguageCode(
                      CountryFlagHelper.findCodeById(leader.country!),
                      width: context.width * 0.07,
                      height: context.width * 0.07,
                    ),
                  )
                ],
              ),
              // Positioned(
              //   top: -10,
              //   child: SvgPicture.asset(
              //     'asset/navigation/cup.svg',
              //     width: context.width * 0.08,
              //     color: Colors.red,
              //   ),
              // )
            ],
          ),
          Container(
            child: Text(
              leader.name! + ' ' + leader.surname!,
              style: TextStyle(
                fontFamily: context.fontFamily500,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            width: context.width * 0.2,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: context.appColor,
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              NumberHelper.formatToDecimalString(leader.cup!),
              style: TextStyle(
                color: Colors.white,
                fontFamily: context.fontFamily600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  CachedNetworkImage buildImageContainer(
    DataModel leader,
    BuildContext context,
    LevelOrderViewModel viewModel, {
    width = 0.15,
  }) {
    return CachedNetworkImage(
      imageUrl: leader.path!,
      width: context.width * width,
      height: context.width * width,
      fit: BoxFit.cover,
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
        return Container(
          decoration: BoxDecoration(
              color: context.appColor,
              borderRadius: BorderRadius.circular(context.width * 0.15)),
          child: Center(
            child: Text(
              viewModel.getInitials(
                (leader.name! + " " + leader.surname!),
              ),
              style: TextStyle(
                color: Colors.white,
                fontFamily: context.fontFamily600,
                fontSize: 18,
              ),
            ),
          ),
        );
      },
    );
  }
}
