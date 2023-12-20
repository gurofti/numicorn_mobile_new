// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_trial_create_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SuperTrialCreateViewModel on _SuperTrialCreateViewModelBase, Store {
  late final _$unitModelAtom =
      Atom(name: '_SuperTrialCreateViewModelBase.unitModel', context: context);

  @override
  ObservableList<TrialUnitModel> get unitModel {
    _$unitModelAtom.reportRead();
    return super.unitModel;
  }

  @override
  set unitModel(ObservableList<TrialUnitModel> value) {
    _$unitModelAtom.reportWrite(value, super.unitModel, () {
      super.unitModel = value;
    });
  }

  late final _$totalQuestionCountAtom = Atom(
      name: '_SuperTrialCreateViewModelBase.totalQuestionCount',
      context: context);

  @override
  int get totalQuestionCount {
    _$totalQuestionCountAtom.reportRead();
    return super.totalQuestionCount;
  }

  @override
  set totalQuestionCount(int value) {
    _$totalQuestionCountAtom.reportWrite(value, super.totalQuestionCount, () {
      super.totalQuestionCount = value;
    });
  }

  late final _$formLoadingAtom = Atom(
      name: '_SuperTrialCreateViewModelBase.formLoading', context: context);

  @override
  bool get formLoading {
    _$formLoadingAtom.reportRead();
    return super.formLoading;
  }

  @override
  set formLoading(bool value) {
    _$formLoadingAtom.reportWrite(value, super.formLoading, () {
      super.formLoading = value;
    });
  }

  late final _$trialCreateLoadingAtom = Atom(
      name: '_SuperTrialCreateViewModelBase.trialCreateLoading',
      context: context);

  @override
  bool get trialCreateLoading {
    _$trialCreateLoadingAtom.reportRead();
    return super.trialCreateLoading;
  }

  @override
  set trialCreateLoading(bool value) {
    _$trialCreateLoadingAtom.reportWrite(value, super.trialCreateLoading, () {
      super.trialCreateLoading = value;
    });
  }

  late final _$fetchTrialSectionAsyncAction = AsyncAction(
      '_SuperTrialCreateViewModelBase.fetchTrialSection',
      context: context);

  @override
  Future<void> fetchTrialSection() {
    return _$fetchTrialSectionAsyncAction.run(() => super.fetchTrialSection());
  }

  late final _$trialCreateAsyncAction = AsyncAction(
      '_SuperTrialCreateViewModelBase.trialCreate',
      context: context);

  @override
  Future<void> trialCreate() {
    return _$trialCreateAsyncAction.run(() => super.trialCreate());
  }

  late final _$_SuperTrialCreateViewModelBaseActionController =
      ActionController(
          name: '_SuperTrialCreateViewModelBase', context: context);

  @override
  dynamic incrementOrDecrement(
      int unitIndex, int sectionIndex, int level, int type) {
    final _$actionInfo =
        _$_SuperTrialCreateViewModelBaseActionController.startAction(
            name: '_SuperTrialCreateViewModelBase.incrementOrDecrement');
    try {
      return super.incrementOrDecrement(unitIndex, sectionIndex, level, type);
    } finally {
      _$_SuperTrialCreateViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
unitModel: ${unitModel},
totalQuestionCount: ${totalQuestionCount},
formLoading: ${formLoading},
trialCreateLoading: ${trialCreateLoading}
    ''';
  }
}
