import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/_product/_utilty/formatTimeAgo.dart';
import 'package:numicorn_mobile/view/_product/_widgets/card/header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/unit/unit_card.dart';
import 'package:numicorn_mobile/view/main/super/model/super_wrongs_model.dart';
import 'package:numicorn_mobile/view/main/super/view_model/super_wrongs_view_model.dart';
import 'package:numicorn_mobile/view/main/super/widget/super_card_widget.dart';

import '../../../../core/extension/context_extension.dart';
import '../../../_product/_widgets/container/app/app_container.dart';

class SuperWrongsView extends StatelessWidget {
  const SuperWrongsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SuperWrongsViewModel>(
      viewModel: SuperWrongsViewModel(),
      onModelReady: (model) async {
        model.setContext(context);
        model.init();
        await model.fetchWrongTrialsService();
      },
      onPageBuilder: (BuildContext context, SuperWrongsViewModel viewModel) =>
          AppContainer(
              header: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: context.width,
                height: 50,
                child: buildHeader(
                  context,
                  header: "Hatalarım",
                  closeClick: () async {
                    await viewModel.redirectToPage(NavigationConstants.SUPER);
                  },
                ),
              ),
              body: Observer(builder: (_) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: viewModel.units!.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, index) {
                          return Column(
                            children: [
                              UnitCard(
                                title:
                                    viewModel.units![index].title!.toString(),
                                description: viewModel
                                    .units![index].description!
                                    .toString(),
                              ),
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount:
                                    viewModel.units![index].sections!.length,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemBuilder:
                                    (BuildContext context, sectionIndex) {
                                  SectionsModel sectionModel = viewModel
                                      .units![index].sections![sectionIndex];

                                  return Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.only(
                                      top: sectionIndex == 0 ? 10 : 5,
                                      bottom: (sectionIndex + 1) >=
                                              viewModel.units![index].sections!
                                                  .length
                                          ? 10
                                          : 5,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0,
                                      ),
                                      child: GestureDetector(
                                        onTap: () async {
                                          await viewModel
                                              .wrongQuestionOfSection(
                                            sectionModel.id!,
                                          );
                                        },
                                        child: buildLectureContainer(
                                          context,
                                          title: sectionModel.title!,
                                          secondTitle:
                                              sectionModel.wrongQuestionCount !=
                                                      "0"
                                                  ? (sectionModel
                                                          .wrongQuestionCount! +
                                                      " soru da hata yaptın")
                                                  : "Henüz hiç hata yapmadın!",
                                          description:
                                              sectionModel.latestSolvedDate !=
                                                      null
                                                  ? formatTimeAgo(sectionModel
                                                      .latestSolvedDate!)
                                                  : "",
                                          iconPath: 'asset/image/sembol.svg',
                                          cardBottomPadding: 0,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
