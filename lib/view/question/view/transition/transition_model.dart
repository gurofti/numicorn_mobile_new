import 'package:json_annotation/json_annotation.dart';

class TransitionModel {
  final int index;
  final FinishPage finishPage;
  final List<TransitionItem> actions;

  TransitionModel(
      {required this.index, required this.actions, required this.finishPage});
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

  FinishPage({required this.page, required this.y});
}
