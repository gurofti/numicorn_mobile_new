// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_wrongs_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SuperWrongsViewModel on _SuperWrongsViewModelBase, Store {
  late final _$unitsAtom =
      Atom(name: '_SuperWrongsViewModelBase.units', context: context);

  @override
  List<UnitsModel>? get units {
    _$unitsAtom.reportRead();
    return super.units;
  }

  @override
  set units(List<UnitsModel>? value) {
    _$unitsAtom.reportWrite(value, super.units, () {
      super.units = value;
    });
  }

  late final _$fetchWrongTrialsServiceAsyncAction = AsyncAction(
      '_SuperWrongsViewModelBase.fetchWrongTrialsService',
      context: context);

  @override
  Future<void> fetchWrongTrialsService() {
    return _$fetchWrongTrialsServiceAsyncAction
        .run(() => super.fetchWrongTrialsService());
  }

  late final _$wrongQuestionOfSectionAsyncAction = AsyncAction(
      '_SuperWrongsViewModelBase.wrongQuestionOfSection',
      context: context);

  @override
  Future<void> wrongQuestionOfSection(int sectionId) {
    return _$wrongQuestionOfSectionAsyncAction
        .run(() => super.wrongQuestionOfSection(sectionId));
  }

  @override
  String toString() {
    return '''
units: ${units}
    ''';
  }
}
