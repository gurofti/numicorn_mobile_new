import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/_product/_widgets/card/header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/app/app_container.dart';
import 'package:numicorn_mobile/view/main/setting/view/setting_view.dart';
import 'package:numicorn_mobile/view/main/super/view_model/super_view_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class SuperView extends StatelessWidget {
  const SuperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SuperViewModel>(
      viewModel: SuperViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SuperViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: buildHeader(context, header: "Sayısal Yolculuk"),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              width: context.width,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.items.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: ((BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      viewModel.toPage(viewModel.items[index].link);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: SettingView().settingCard(
                        context,
                        superItem(context, item: viewModel.items[index]),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildBadgeItem(BuildContext context, String text) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColor,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontFamily: context.fontFamily700,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget superItem(
    BuildContext context, {
    required SuperItem item,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Container(
                width: context.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: context.fontFamily500,
                          ),
                        ),
                        if (item.secondTitle != null) item.secondTitle!
                      ],
                    ),
                    Text(
                      item.description,
                      style: TextStyle(
                        fontSize: 13.5,
                        fontFamily: context.fontFamily300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            item.path, //'asset/image/rocket_login.png',
            fit: BoxFit.contain,
            height: context.width * 0.18,
          )
        ],
      ),
    );
  }

  Widget buildWelcomeContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // border: Border(
          //   bottom: BorderSide(
          //     color: context.appColorGray,
          //   ),
          // ),
          ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '👋',
              style: TextStyle(
                fontSize: 42,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selam Damla,',
                style: TextStyle(
                  fontFamily: context.fontFamily600,
                  fontSize: 22,
                ),
              ),
              Text(
                'Seni tekrar burada görmek çok güzel!',
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SuperItem {
  final String title;
  final String description;
  final String path;
  final String link;
  final Widget? secondTitle;
  final Function? onClick;

  SuperItem({
    required this.title,
    required this.description,
    required this.path,
    required this.link,
    this.secondTitle,
    this.onClick,
  });
}
