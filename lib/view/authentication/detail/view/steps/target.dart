import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/step_header.dart';

import '../../view_model/detail_view_model.dart';

class Target extends StatelessWidget {
  Target({Key? key, required this.viewModel}) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(img: 'target_4.svg', header: 'Bizden ne bekliyorsun?'),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemName: 'Matematik öğrenmek istiyorum.',
                  textSize: 17.5,
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkTarget,
                  onPressed: () {
                    viewModel.checkTarget = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemName: 'Ders notlarımı yükseltmek istiyorum.',
                  textSize: 17.5,
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkTarget,
                  onPressed: () {
                    viewModel.checkTarget = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemName: 'Beyin egzersizi yapmak istiyorum.',
                  textSize: 17.5,
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkTarget,
                  onPressed: () {
                    viewModel.checkTarget = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemName: 'Günlük yaşamda kullanmak istiyorum.',
                  textSize: 17.5,
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkTarget,
                  onPressed: () {
                    viewModel.checkTarget = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemName: 'Diğer',
                  textSize: 17.5,
                  itemCode: 'auth/target/goal.png',
                  selectItemId: viewModel.checkTarget,
                  onPressed: () {
                    viewModel.checkTarget = 5;
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
