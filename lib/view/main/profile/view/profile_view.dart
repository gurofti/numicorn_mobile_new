import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/main/profile/model/profile_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../_product/_widgets/container/app/app_container.dart';
import '../view_model/profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      viewModel: ProfileViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.fetchProfileService();
      },
      onPageBuilder: (BuildContext context, ProfileViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: buildHeader(context, viewModel),
        ),
        body: Container(
          color: Colors.white,
          child: viewModel.loading
              ? buildContent(context, viewModel)
              : Container(),
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context, ProfileViewModel viewModel) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Container(
          padding: EdgeInsets.only(bottom: 25),
          child: Observer(builder: (_) {
            return Column(
              children: [
                buildProfilePhoto(context, viewModel),
                buildUserInfo(context, viewModel),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Başarılar',
                    style: TextStyle(
                      fontFamily: context.fontFamily600,
                      fontSize: 18,
                    ),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.profileModel.achievements!.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    AchievementModel achievement =
                        viewModel.profileModel.achievements![index];
                    return buildAchievements(context, achievement);
                  },
                ),
                // buildAchievements(
                //   context,
                //   lottiePath:
                //       'https://assets4.lottiefiles.com/packages/lf20_5dbf6say.json',
                //   header: 'Matematik Aşığı',
                //   desc: '30 günlük bir seriye ulaş',
                //   rate: '%12',
                //   level: '1',
                // ),
                // buildAchievements(
                //   context,
                //   lottiePath:
                //       'https://assets4.lottiefiles.com/packages/lf20_5dbf6say.json',
                //   header: 'Nişancı Matematik',
                //   desc: '10 dersi hatasız tamamla',
                //   rate: '%80',
                //   level: '2',
                // ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget buildProfilePhoto(BuildContext context, ProfileViewModel viewModel) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: context.width * 0.3,
            child: Container(
              child: ClipOval(
                child: SizedBox.fromSize(
                  child: CachedNetworkImage(
                    imageUrl: viewModel.profileModel.account!.path!,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) {
                      return SizedBox(
                        height: context.width * 0.3,
                        width: context.width * 0.3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.appColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                viewModel.getInitials(
                                  (viewModel.profileModel.account?.name ?? '') +
                                      " " +
                                      (viewModel
                                              .profileModel.account?.surname ??
                                          ''),
                                ),
                                style: TextStyle(
                                  fontFamily: context.fontFamily600,
                                  color: Colors.white,
                                  fontSize: 23,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: ClipOval(
              child: GestureDetector(
                onTap: () {
                  print("test");
                  viewModel.getImageFromGallery();
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 19,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAchievements(BuildContext context, AchievementModel achievement) {
    print(((achievement.value! > achievement.target!
                    ? achievement.target
                    : achievement.value)!
                .toInt() /
            achievement.target!)
        .toString());
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Container(
            width: context.width - 55,
            height: context.height * 0.12,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: context.appColorGray.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: context.width * 0.26,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: context.width * 0.15,
                          child: Image.network(
                            achievement.path!,
                          ),
                        ),
                        Text(
                          achievement.level!.toString() + '. Seviye',
                          style: TextStyle(
                            fontFamily: context.fontFamily600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              achievement.title!,
                              style: TextStyle(
                                fontFamily: context.fontFamily600,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              achievement.description!,
                              style: TextStyle(
                                  fontFamily: context.fontFamily300,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    bottom: 2,
                                    top: 5,
                                  ),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black87,
                                        fontFamily: context.fontFamily600,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: (achievement.value! >
                                                      achievement.target!
                                                  ? achievement.target
                                                  : achievement.value)
                                              .toString(),
                                        ),
                                        const TextSpan(
                                            text: ' / ',
                                            style: TextStyle(fontSize: 12)),
                                        TextSpan(
                                          text: achievement.target.toString(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.4,
                                  child: LinearPercentIndicator(
                                    lineHeight: 20.0,
                                    padding: EdgeInsets.zero,
                                    barRadius: Radius.circular(15),
                                    percent: ((achievement.value! >
                                                    achievement.target!
                                                ? achievement.target
                                                : achievement.value)!
                                            .toInt() /
                                        achievement.target!),
                                    backgroundColor:
                                        context.appColorGray.withOpacity(0.5),
                                    progressColor: context.appColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildUserInfo(BuildContext context, ProfileViewModel viewModel) {
    return Container(
      width: context.width,
      child: Observer(builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: context.height * 0.03,
                bottom: context.height * 0.03,
              ),
              child: Text(
                ((viewModel.profileModel.account?.name ?? '') +
                    " " +
                    (viewModel.profileModel.account?.surname ?? '')),
                style: TextStyle(
                  fontFamily: context.fontFamily600,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: context.appColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: buildStatisticItem(
                      context,
                      'Günlük Seri',
                      viewModel.profileModel.account!.series!.toString(),
                      'home/series',
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 1,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          right: BorderSide(
                            width: 1,
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: buildStatisticItem(
                        context,
                        'Başarı Puanı',
                        viewModel.profileModel.account!.cup!.toString(),
                        'navigation/cup',
                      ),
                    ),
                  ),
                  Expanded(
                    child: buildStatisticItem(
                      context,
                      'Toplam Elmas',
                      viewModel.profileModel.account!.diamond!.toString(),
                      'home/diamond',
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }

  Container buildStatisticItem(
    BuildContext context,
    String text,
    String value,
    String path,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SvgPicture.asset(
                    'asset/' + path + '.svg', //'asset/image/rocket_login.png',
                    fit: BoxFit.cover,
                    height: context.width * 0.06,
                  ),
                ),
                Text(
                  text.toUpperCase(),
                  style: TextStyle(
                    fontFamily: context.fontFamily600,
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 2, top: 5),
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      fontFamily: context.fontFamily600,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context, ProfileViewModel viewModel) {
    return Stack(
      children: [
        Container(
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
              'Profilim',
              style: TextStyle(
                fontFamily: context.fontFamily600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          top: 0,
          child: GestureDetector(
            onTap: () {},
            child: GestureDetector(
              onTap: () {
                viewModel.settingPage();
              },
              child: Icon(
                Icons.settings,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
