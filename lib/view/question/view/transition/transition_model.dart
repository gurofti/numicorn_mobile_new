import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';

class TransitionModel {
  final int index;
  final String? buttonText;
  final FinishPage finishPage;
  final Sections? section;
  final List<TransitionItem> actions;

  TransitionModel({
    required this.index,
    this.buttonText = "DEVAM ET",
    required this.actions,
    required this.finishPage,
    this.section,
  });
}

@JsonSerializable()
class TransitionItem {
  final String page;
  dynamic params;

  TransitionItem({required this.page, required this.params});
}

@JsonSerializable()
class FinishPage {
  final double y;
  final String page;

  FinishPage({
    required this.page,
    required this.y,
  });
}
