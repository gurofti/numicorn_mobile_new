import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_widgets/card/header.dart';
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
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SuperWrongsViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: buildHeader(context, header: "Hatalarım"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(bottom: context.height * 0.03),
                  child: Column(
                    children: [
                      buildLectureContainer(
                        context,
                        title: "Temel Kavramlar",
                        secondTitle: "6 soru da hata yapıldı",
                        description: "1 saat önce",
                        iconPath: 'asset/image/sembol.svg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
