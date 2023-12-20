import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/step_header.dart';

import '../../view_model/detail_view_model.dart';

class Level extends StatelessWidget {
  Level({Key? key, required this.viewModel}) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(
          img: 'level.svg',
          header: 'Matematik seviyeniz nedir?',
        ),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemName: 'Sıfırdan başlıyorum.',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkLevel,
                  onPressed: () {
                    viewModel.checkLevel = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemName: 'Temel bilgim var.',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkLevel,
                  onPressed: () {
                    viewModel.checkLevel = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemName: 'Orta seviye bilgim var.',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkLevel,
                  onPressed: () {
                    viewModel.checkLevel = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemName: 'Uzman seviyedeyim.',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkLevel,
                  onPressed: () {
                    viewModel.checkLevel = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
