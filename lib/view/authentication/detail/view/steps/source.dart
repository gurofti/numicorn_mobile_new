import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/step_header.dart';

import '../../view_model/detail_view_model.dart';

class Source extends StatelessWidget {
  Source({Key? key, required this.viewModel}) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(img: 'source.svg', header: 'Bizi nereden buldun?'),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemCode: 'auth/source/google.png',
                  itemName: 'Google Aramaları',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemCode: 'auth/source/facebook.png',
                  itemName: 'Facebook',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemCode: 'auth/source/instagram.png',
                  itemName: 'Instagram',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemCode: 'auth/source/youtube.png',
                  itemName: 'Youtube',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemCode: 'auth/source/twitter.png',
                  itemName: 'Twitter',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 5;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 6,
                  itemCode: 'auth/source/article.png',
                  itemName: 'Haber/Makale/Blog',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 6;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 7,
                  itemCode: 'auth/source/family.png',
                  itemName: 'Arkadaş/Aile',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 7;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 8,
                  itemCode: 'auth/source/other.png',
                  itemName: 'Diğer',
                  selectItemId: viewModel.checkSource,
                  onPressed: () {
                    viewModel.checkSource = 8;
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
