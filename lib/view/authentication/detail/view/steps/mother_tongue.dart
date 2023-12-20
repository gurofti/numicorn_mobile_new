import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view_model/detail_view_model.dart';

import '../general/step_header.dart';

class MotherTongue extends StatelessWidget {
  MotherTongue({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(img: 'language.svg', header: 'Ana dilin ne?'),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemCode: 'countries/tr.svg',
                  itemName: 'Turkish',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemCode: 'countries/en.svg',
                  itemName: 'English',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemCode: 'countries/de.svg',
                  itemName: 'Germany',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemCode: 'countries/fr.svg',
                  itemName: 'French',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemCode: 'countries/it.svg',
                  itemName: 'Italian',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 5;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 6,
                  itemCode: 'countries/es.svg',
                  itemName: 'Spanish',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 6;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 7,
                  itemCode: 'countries/tr.svg',
                  itemName: 'Turkish',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 7;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 8,
                  itemCode: 'countries/en.svg',
                  itemName: 'English',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 8;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 9,
                  itemCode: 'countries/de.svg',
                  itemName: 'Germany',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.checkLanguage = 8;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemCode: 'countries/fr.svg',
                  itemName: 'French',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemCode: 'countries/it.svg',
                  itemName: 'Italian',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 6,
                  itemCode: 'countries/es.svg',
                  itemName: 'Spanish',
                  selectItemId: viewModel.checkLanguage,
                  onPressed: () {
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
