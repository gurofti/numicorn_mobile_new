import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_widgets/card/header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/unit/unit_container.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../_product/_widgets/container/app/app_container.dart';
import '../view_model/lecture_view_model.dart';

class LectureView extends StatelessWidget {
  const LectureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LectureViewModel>(
      viewModel: LectureViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LectureViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: buildHeader(context, header: "Konu Anlatımı"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: context.height,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: context.width,
                  //   padding: EdgeInsets.symmetric(
                  //     vertical: 45,
                  //     horizontal: 20,
                  //   ),
                  //   color: Colors.white,
                  //   child: buildWelcomeContainer(context),
                  // ),
                  Column(
                    children: [
                      UnitContainer(header: '1', description: 'description'),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            buildLectureContainer(context),
                            buildLectureContainer(context),
                            buildLectureContainer(context),
                          ],
                        ),
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

  Widget buildWelcomeContainer(BuildContext context) {
    return Container(
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

  Widget buildLectureContainer(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 5,
          left: 0,
          right: 0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  'asset/levels/tag.svg',
                  width: context.width * 0.3,
                ),
              ),
              Positioned(
                  child: Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: context.appColor,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: context.appColorLight,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'asset/image/sembol.svg',
                      width: context.width * 0.15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Temel Kavramlar',
                          style: TextStyle(
                            fontFamily: context.fontFamily600,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'Okuma süresi 5 dakika',
                        )
                      ],
                    ),
                  )
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}
