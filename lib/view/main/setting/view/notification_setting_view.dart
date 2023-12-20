import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';
import 'package:numicorn_mobile/core/global/validation/isEmail.dart';
import 'package:numicorn_mobile/core/init/lang/locale_keys.g.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/app/app_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/input/fancy_text_input.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/main/setting/view/setting_view.dart';
import 'package:numicorn_mobile/view/main/setting/view_model/notification_setting_view_model.dart';
import 'package:numicorn_mobile/view/main/setting/view_model/setting_view_model.dart';
import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';

class NotificationSettingView extends StatelessWidget {
  const NotificationSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<NotificationSettingViewModel>(
      viewModel: NotificationSettingViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.fetchAccountSettingService();
      },
      onPageBuilder:
          (BuildContext context, NotificationSettingViewModel viewModel) =>
              AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: SettingView().buildHeader(context, "Bildirim Ayarları"),
        ),
        body: Observer(builder: (_) {
          return buildContent(context, viewModel);
        }),
      ),
    );
  }

  Widget buildContent(
      BuildContext context, NotificationSettingViewModel viewModel) {
    return Container(
      width: context.width,
      height: context.height,
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          buildNotificationItem(
            context,
            viewModel,
            "Seri Koruma Hatırlatmaları",
            viewModel.serialProtectionReminder,
            (value) {
              print(value);
              viewModel.serialProtectionReminder = value;
            },
          ),
          buildNotificationItem(
            context,
            viewModel,
            "Pazarlama Kampanyaları",
            viewModel.marketingCampaigns,
            (value) {
              print(value);
              viewModel.marketingCampaigns = value;
            },
          ),
          buildNotificationItem(
            context,
            viewModel,
            "Ürün Güncellemeri",
            viewModel.productUpdates,
            (value) {
              print(value);
              viewModel.productUpdates = value;
            },
          ),
          buildNotificationItem(
            context,
            viewModel,
            "Öğrenim İpuçları",
            viewModel.learningTips,
            (value) {
              print(value);
              viewModel.learningTips = value;
            },
          ),
          buildNotificationItem(
            context,
            viewModel,
            "Öğrenci Başarıları",
            viewModel.studentAchievements,
            (value) {
              print(value);
              viewModel.studentAchievements = value;
            },
          ),
          Container(
            padding: const EdgeInsets.all(38.0),
            child: FancyButton(
              child: SizedBox(
                width: context.width * 0.45,
                child: Center(
                  child: !viewModel.isLoading
                      ? Text(
                          "Kaydet",
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
              onPressed: () {
                viewModel.accountSettingdUpdate();
              },
            ),
          ),
        ],
      ),
    );
  }

  buildNotificationItem(
    BuildContext context,
    NotificationSettingViewModel viewModel,
    String header,
    stateValue,
    onChange,
  ) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return context.appColor600;
        }
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return context.appColor700;
        }
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        return null;
      },
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SettingView().settingCard(
        context,
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      header,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: context.fontFamily500,
                      ),
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 1.35,
                  child: Switch(
                    trackColor: trackColor,
                    overlayColor: overlayColor,
                    thumbColor: overlayColor,
                    value: stateValue,
                    onChanged: onChange,
                    splashRadius: 32,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
