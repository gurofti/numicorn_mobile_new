import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/step_header.dart';

import '../../view_model/detail_view_model.dart';

class EducationStatus extends StatelessWidget {
  EducationStatus({Key? key, required this.viewModel}) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(
          img: 'education_status.svg',
          header: 'Eğitim durumunuz nedir?',
        ),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemName: 'İlkokul',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkEducationStatus,
                  onPressed: () {
                    viewModel.checkEducationStatus = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemName: 'Ortaokul',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkEducationStatus,
                  onPressed: () {
                    viewModel.checkEducationStatus = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemName: 'Lise',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkEducationStatus,
                  onPressed: () {
                    viewModel.checkEducationStatus = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemName: 'Lisans',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkEducationStatus,
                  onPressed: () {
                    viewModel.checkEducationStatus = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemName: 'Diğer',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkEducationStatus,
                  onPressed: () {
                    viewModel.checkEducationStatus = 5;
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
