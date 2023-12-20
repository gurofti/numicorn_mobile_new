// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_trials_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SuperTrialsViewModel on _SuperTrialsViewModelBase, Store {
  late final _$unitModelAtom =
      Atom(name: '_SuperTrialsViewModelBase.unitModel', context: context);

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
      name: '_SuperTrialsViewModelBase.totalQuestionCount', context: context);

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

  late final _$formLoadingAtom =
      Atom(name: '_SuperTrialsViewModelBase.formLoading', context: context);

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

  late final _$dataAtom =
      Atom(name: '_SuperTrialsViewModelBase.data', context: context);

  @override
  TrialsDataModel? get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(TrialsDataModel? value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$trialsContainerLoadingAtom = Atom(
      name: '_SuperTrialsViewModelBase.trialsContainerLoading',
      context: context);

  @override
  bool get trialsContainerLoading {
    _$trialsContainerLoadingAtom.reportRead();
    return super.trialsContainerLoading;
  }

  @override
  set trialsContainerLoading(bool value) {
    _$trialsContainerLoadingAtom
        .reportWrite(value, super.trialsContainerLoading, () {
      super.trialsContainerLoading = value;
    });
  }

  late final _$trialsLoadingAtom =
      Atom(name: '_SuperTrialsViewModelBase.trialsLoading', context: context);

  @override
  bool get trialsLoading {
    _$trialsLoadingAtom.reportRead();
    return super.trialsLoading;
  }

  @override
  set trialsLoading(bool value) {
    _$trialsLoadingAtom.reportWrite(value, super.trialsLoading, () {
      super.trialsLoading = value;
    });
  }

  late final _$trialItemsAtom =
      Atom(name: '_SuperTrialsViewModelBase.trialItems', context: context);

  @override
  List<TrialItemModel> get trialItems {
    _$trialItemsAtom.reportRead();
    return super.trialItems;
  }

  @override
  set trialItems(List<TrialItemModel> value) {
    _$trialItemsAtom.reportWrite(value, super.trialItems, () {
      super.trialItems = value;
    });
  }

  late final _$pageAtom =
      Atom(name: '_SuperTrialsViewModelBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$fetchTrialSectionAsyncAction = AsyncAction(
      '_SuperTrialsViewModelBase.fetchTrialSection',
      context: context);

  @override
  Future<void> fetchTrialSection() {
    return _$fetchTrialSectionAsyncAction.run(() => super.fetchTrialSection());
  }

  late final _$fetchTrialsAsyncAction =
      AsyncAction('_SuperTrialsViewModelBase.fetchTrials', context: context);

  @override
  Future<void> fetchTrials() {
    return _$fetchTrialsAsyncAction.run(() => super.fetchTrials());
  }

  late final _$createTrialAsyncAction =
      AsyncAction('_SuperTrialsViewModelBase.createTrial', context: context);

  @override
  Future<void> createTrial() {
    return _$createTrialAsyncAction.run(() => super.createTrial());
  }

  late final _$_SuperTrialsViewModelBaseActionController =
      ActionController(name: '_SuperTrialsViewModelBase', context: context);

  @override
  void infiniteTrials() {
    final _$actionInfo = _$_SuperTrialsViewModelBaseActionController
        .startAction(name: '_SuperTrialsViewModelBase.infiniteTrials');
    try {
      return super.infiniteTrials();
    } finally {
      _$_SuperTrialsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementOrDecrement(
      int unitIndex, int sectionIndex, int level, int type) {
    final _$actionInfo = _$_SuperTrialsViewModelBaseActionController
        .startAction(name: '_SuperTrialsViewModelBase.incrementOrDecrement');
    try {
      return super.incrementOrDecrement(unitIndex, sectionIndex, level, type);
    } finally {
      _$_SuperTrialsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
unitModel: ${unitModel},
totalQuestionCount: ${totalQuestionCount},
formLoading: ${formLoading},
data: ${data},
trialsContainerLoading: ${trialsContainerLoading},
trialsLoading: ${trialsLoading},
trialItems: ${trialItems},
page: ${page}
    ''';
  }
}
