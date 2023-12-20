// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailViewModel on _DetailViewModelBase, Store {
  late final _$stepIndexAtom =
      Atom(name: '_DetailViewModelBase.stepIndex', context: context);

  @override
  int get stepIndex {
    _$stepIndexAtom.reportRead();
    return super.stepIndex;
  }

  @override
  set stepIndex(int value) {
    _$stepIndexAtom.reportWrite(value, super.stepIndex, () {
      super.stepIndex = value;
    });
  }

  late final _$stepStatusAtom =
      Atom(name: '_DetailViewModelBase.stepStatus', context: context);

  @override
  bool get stepStatus {
    _$stepStatusAtom.reportRead();
    return super.stepStatus;
  }

  @override
  set stepStatus(bool value) {
    _$stepStatusAtom.reportWrite(value, super.stepStatus, () {
      super.stepStatus = value;
    });
  }

  late final _$checkLanguageAtom =
      Atom(name: '_DetailViewModelBase.checkLanguage', context: context);

  @override
  int get checkLanguage {
    _$checkLanguageAtom.reportRead();
    return super.checkLanguage;
  }

  @override
  set checkLanguage(int value) {
    _$checkLanguageAtom.reportWrite(value, super.checkLanguage, () {
      super.checkLanguage = value;
    });
  }

  late final _$checkCountryAtom =
      Atom(name: '_DetailViewModelBase.checkCountry', context: context);

  @override
  int get checkCountry {
    _$checkCountryAtom.reportRead();
    return super.checkCountry;
  }

  @override
  set checkCountry(int value) {
    _$checkCountryAtom.reportWrite(value, super.checkCountry, () {
      super.checkCountry = value;
    });
  }

  late final _$checkSourceAtom =
      Atom(name: '_DetailViewModelBase.checkSource', context: context);

  @override
  int get checkSource {
    _$checkSourceAtom.reportRead();
    return super.checkSource;
  }

  @override
  set checkSource(int value) {
    _$checkSourceAtom.reportWrite(value, super.checkSource, () {
      super.checkSource = value;
    });
  }

  late final _$checkTargetAtom =
      Atom(name: '_DetailViewModelBase.checkTarget', context: context);

  @override
  int get checkTarget {
    _$checkTargetAtom.reportRead();
    return super.checkTarget;
  }

  @override
  set checkTarget(int value) {
    _$checkTargetAtom.reportWrite(value, super.checkTarget, () {
      super.checkTarget = value;
    });
  }

  late final _$checkAgeAtom =
      Atom(name: '_DetailViewModelBase.checkAge', context: context);

  @override
  int get checkAge {
    _$checkAgeAtom.reportRead();
    return super.checkAge;
  }

  @override
  set checkAge(int value) {
    _$checkAgeAtom.reportWrite(value, super.checkAge, () {
      super.checkAge = value;
    });
  }

  late final _$checkEducationStatusAtom =
      Atom(name: '_DetailViewModelBase.checkEducationStatus', context: context);

  @override
  int get checkEducationStatus {
    _$checkEducationStatusAtom.reportRead();
    return super.checkEducationStatus;
  }

  @override
  set checkEducationStatus(int value) {
    _$checkEducationStatusAtom.reportWrite(value, super.checkEducationStatus,
        () {
      super.checkEducationStatus = value;
    });
  }

  late final _$checkLevelAtom =
      Atom(name: '_DetailViewModelBase.checkLevel', context: context);

  @override
  int get checkLevel {
    _$checkLevelAtom.reportRead();
    return super.checkLevel;
  }

  @override
  set checkLevel(int value) {
    _$checkLevelAtom.reportWrite(value, super.checkLevel, () {
      super.checkLevel = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_DetailViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$stepNextAsyncAction =
      AsyncAction('_DetailViewModelBase.stepNext', context: context);

  @override
  Future<void> stepNext() {
    return _$stepNextAsyncAction.run(() => super.stepNext());
  }

  late final _$registerDetailServiceAsyncAction = AsyncAction(
      '_DetailViewModelBase.registerDetailService',
      context: context);

  @override
  Future<void> registerDetailService(DetailModel model) {
    return _$registerDetailServiceAsyncAction
        .run(() => super.registerDetailService(model));
  }

  late final _$_DetailViewModelBaseActionController =
      ActionController(name: '_DetailViewModelBase', context: context);

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_DetailViewModelBaseActionController.startAction(
        name: '_DetailViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_DetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeStepStatus(bool value) {
    final _$actionInfo = _$_DetailViewModelBaseActionController.startAction(
        name: '_DetailViewModelBase.changeStepStatus');
    try {
      return super.changeStepStatus(value);
    } finally {
      _$_DetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
stepIndex: ${stepIndex},
stepStatus: ${stepStatus},
checkLanguage: ${checkLanguage},
checkCountry: ${checkCountry},
checkSource: ${checkSource},
checkTarget: ${checkTarget},
checkAge: ${checkAge},
checkEducationStatus: ${checkEducationStatus},
checkLevel: ${checkLevel},
isLoading: ${isLoading}
    ''';
  }
}
