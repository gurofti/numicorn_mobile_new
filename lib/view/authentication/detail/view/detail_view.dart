import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/age.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/education_status.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/from_country.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/level.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/mother_tongue.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/source.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/steps/target.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../_product/_widgets/button/fancy_button.dart';
import '../view_model/detail_view_model.dart';
import 'general/step_header.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<DetailViewModel>(
      viewModel: DetailViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, DetailViewModel viewModel) =>
          Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            height: context.height,
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Observer(builder: (_) {
                    return StickyHeader(
                      header: Container(
                        padding: EdgeInsets.only(bottom: 15),
                        color: Colors.white,
                        child: LinearPercentIndicator(
                          lineHeight: 28.0,
                          padding: EdgeInsets.zero,
                          barRadius: Radius.circular(15),
                          animation: true,
                          animationDuration: 700,
                          animateFromLastPercent: true,
                          percent: viewModel.stepIndex * 0.14285,
                          backgroundColor:
                              context.appColorGray.withOpacity(0.5),
                          progressColor: context.appColor,
                        ),
                      ),
                      content: Container(
                        width: context.width,
                        child: Column(
                          children: [
                            if (viewModel.stepIndex == 1)
                              MotherTongue(viewModel: viewModel),
                            if (viewModel.stepIndex == 2)
                              FromCountry(viewModel: viewModel),
                            if (viewModel.stepIndex == 3)
                              Source(viewModel: viewModel),
                            if (viewModel.stepIndex == 4)
                              Target(viewModel: viewModel),
                            if (viewModel.stepIndex == 5)
                              Age(viewModel: viewModel),
                            if (viewModel.stepIndex == 6)
                              EducationStatus(viewModel: viewModel),
                            if (viewModel.stepIndex == 7)
                              Level(viewModel: viewModel),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Observer(builder: (_) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              // color: context.appColorGray.withOpacity(0.5),
              border: Border(
                top: BorderSide(
                  color: context.appColorGray,
                ),
              ),
            ),
            child: Observer(builder: (_) {
              return FancyButton(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: context.width - 56,
                    child: Text(
                      'DEVAM ET',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: context.fontFamily600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  if (viewModel.stepStatus) {
                    viewModel.stepNext();
                  }
                },
                color: viewModel.stepStatus
                    ? context.appColor
                    : context.appColorPassive,
                size: 20,
                radius: 22,
              );
            }),
          );
        }),
      ),
    );
  }

  Widget buildStepFromCountry(DetailViewModel viewModel, BuildContext context) {
    return Column(
      children: [
        StepHeader(img: 'country.svg', header: 'Hangi ülkeden bizimlesin?'),
      ],
    );
  }
}
