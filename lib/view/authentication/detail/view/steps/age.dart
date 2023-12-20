import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/step_header.dart';

import '../../view_model/detail_view_model.dart';

class Age extends StatelessWidget {
  Age({Key? key, required this.viewModel}) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(img: 'age.svg', header: 'Kaç Yaşındasın?'),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemName: '0-7',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkAge,
                  onPressed: () {
                    viewModel.checkAge = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemName: '8-12',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkAge,
                  onPressed: () {
                    viewModel.checkAge = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemName: '13-17',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkAge,
                  onPressed: () {
                    viewModel.checkAge = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemName: '18-24',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkAge,
                  onPressed: () {
                    viewModel.checkAge = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemName: '+25',
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkAge,
                  onPressed: () {
                    viewModel.checkAge = 5;
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
