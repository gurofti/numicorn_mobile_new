import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/general/small_image_item.dart';
import 'package:numicorn_mobile/view/authentication/detail/view_model/detail_view_model.dart';

import '../general/step_header.dart';

class FromCountry extends StatelessWidget {
  FromCountry({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  DetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepHeader(img: 'country.svg', header: 'Hangi ülkeden bizimlesin?'),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
            child: Column(
              children: [
                SmallImageItem(
                  itemId: 1,
                  itemCode: 'countries/tr.svg',
                  itemName: 'Türkiye',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 1;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 2,
                  itemCode: 'countries/en.svg',
                  itemName: 'İngiltere',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 2;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 3,
                  itemCode: 'countries/de.svg',
                  itemName: 'Almanya',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 3;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemCode: 'countries/fr.svg',
                  itemName: 'Fransa',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 4;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemCode: 'countries/it.svg',
                  itemName: 'İtalya',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 5;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 6,
                  itemCode: 'countries/es.svg',
                  itemName: 'İspanya',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 6;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 7,
                  itemCode: 'countries/tr.svg',
                  itemName: 'Türkçe',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 7;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 8,
                  itemCode: 'countries/en.svg',
                  itemName: 'English',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 8;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 9,
                  itemCode: 'countries/de.svg',
                  itemName: 'Germany',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.checkCountry = 9;
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 4,
                  itemCode: 'countries/fr.svg',
                  itemName: 'French',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 5,
                  itemCode: 'countries/it.svg',
                  itemName: 'Italian',
                  selectItemId: viewModel.checkCountry,
                  onPressed: () {
                    viewModel.changeStepStatus(true);
                  },
                ),
                SmallImageItem(
                  itemId: 6,
                  itemCode: 'countries/es.svg',
                  itemName: 'Spanish',
                  selectItemId: viewModel.checkCountry,
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
