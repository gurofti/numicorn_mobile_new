import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/app/app_container.dart';
import 'package:numicorn_mobile/view/main/setting/view_model/setting_view_model.dart';
import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SettingViewModel>(
      viewModel: SettingViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SettingViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: buildHeader(context, 'Ayarlar'),
        ),
        body: Observer(builder: (_) {
          return Container(
            color: Colors.white,
            child: buildContent(context, viewModel),
          );
        }),
      ),
    );
  }

  Widget buildHeader(BuildContext context, String header) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(
              header,
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
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContent(BuildContext context, SettingViewModel viewModel) {
    return Container(
      width: context.width,
      height: context.height,
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          settingCardTitle(context, "Hesap"),
          settingCard(
            context,
            Column(
              children: [
                settingItem(
                  context,
                  header: "Hesap Ayarları",
                  onClick: () {
                    viewModel.accountSetting();
                  },
                ),
                settingItem(
                  context,
                  header: "Bildirim Ayarları",
                  onClick: () {
                    viewModel.notificationSetting();
                  },
                ),
              ],
            ),
          ),
          settingCardDivider(),
          settingCardTitle(context, "Abonelik"),
          settingCard(
            context,
            Column(
              children: [
                settingItem(
                  context,
                  header: "Abonelikler",
                ),
              ],
            ),
          ),
          settingCardDivider(),
          settingCardTitle(context, "Destek"),
          settingCard(
            context,
            Column(
              children: [
                settingItem(
                  context,
                  header: "Yardım Merkezi",
                ),
                settingItem(
                  context,
                  header: "Geri Bildirim",
                ),
              ],
            ),
          ),
          settingCardDivider(),
          settingCardDivider(),
          settingCard(
            context,
            Column(
              children: [
                settingItem(
                  context,
                  header: "Oturumu Sonlandır",
                  textColor: context.appColor,
                  textFontWeight: context.fontFamily500,
                  onClick: () {
                    viewModel.logoutSession();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox settingCardDivider() => const SizedBox(height: 15);

  Padding settingCardTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: context.fontFamily600,
          fontSize: 16,
        ),
      ),
    );
  }

  Container settingCard(BuildContext context, items) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: borderSide(context),
          left: borderSide(context),
          right: borderSide(context),
          bottom: BorderSide(
            width: 5,
            color: context.appBorderColor400,
          ),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: items,
    );
  }

  Widget settingItem(
    BuildContext context, {
    header,
    onClick,
    textColor,
    textFontWeight,
  }) {
    return GestureDetector(
      onTap: () {
        onClick();
        print("object");
      },
      child: Container(
        decoration: BoxDecoration(border: Border(bottom: borderSide(context))),
        alignment: Alignment.centerLeft,
        width: context.width,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              header,
              style: TextStyle(
                fontSize: 16,
                fontFamily: textFontWeight ?? context.fontFamily500,
                color: textColor,
              ),
            ),
            Icon(
              Icons.arrow_right,
              color: context.appBorderColor300,
            )
          ],
        ),
      ),
    );
  }

  BorderSide borderSide(BuildContext context) {
    return BorderSide(
      width: 2,
      color: context.appBorderColor400,
    );
  }
}
