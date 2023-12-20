// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_HomeViewModelBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$diamondLoadingAtom =
      Atom(name: '_HomeViewModelBase.diamondLoading', context: context);

  @override
  bool get diamondLoading {
    _$diamondLoadingAtom.reportRead();
    return super.diamondLoading;
  }

  @override
  set diamondLoading(bool value) {
    _$diamondLoadingAtom.reportWrite(value, super.diamondLoading, () {
      super.diamondLoading = value;
    });
  }

  late final _$seriesRefreshLoadingAtom =
      Atom(name: '_HomeViewModelBase.seriesRefreshLoading', context: context);

  @override
  bool get seriesRefreshLoading {
    _$seriesRefreshLoadingAtom.reportRead();
    return super.seriesRefreshLoading;
  }

  @override
  set seriesRefreshLoading(bool value) {
    _$seriesRefreshLoadingAtom.reportWrite(value, super.seriesRefreshLoading,
        () {
      super.seriesRefreshLoading = value;
    });
  }

  late final _$selectedLevelIdAtom =
      Atom(name: '_HomeViewModelBase.selectedLevelId', context: context);

  @override
  int get selectedLevelId {
    _$selectedLevelIdAtom.reportRead();
    return super.selectedLevelId;
  }

  @override
  set selectedLevelId(int value) {
    _$selectedLevelIdAtom.reportWrite(value, super.selectedLevelId, () {
      super.selectedLevelId = value;
    });
  }

  late final _$selectedLevelTextAtom =
      Atom(name: '_HomeViewModelBase.selectedLevelText', context: context);

  @override
  String get selectedLevelText {
    _$selectedLevelTextAtom.reportRead();
    return super.selectedLevelText;
  }

  @override
  set selectedLevelText(String value) {
    _$selectedLevelTextAtom.reportWrite(value, super.selectedLevelText, () {
      super.selectedLevelText = value;
    });
  }

  late final _$finishPageAtom =
      Atom(name: '_HomeViewModelBase.finishPage', context: context);

  @override
  FinishPage get finishPage {
    _$finishPageAtom.reportRead();
    return super.finishPage;
  }

  @override
  set finishPage(FinishPage value) {
    _$finishPageAtom.reportWrite(value, super.finishPage, () {
      super.finishPage = value;
    });
  }

  late final _$accountAtom =
      Atom(name: '_HomeViewModelBase.account', context: context);

  @override
  AccountModel? get account {
    _$accountAtom.reportRead();
    return super.account;
  }

  @override
  set account(AccountModel? value) {
    _$accountAtom.reportWrite(value, super.account, () {
      super.account = value;
    });
  }

  late final _$unitsAtom =
      Atom(name: '_HomeViewModelBase.units', context: context);

  @override
  List<UnitModel> get units {
    _$unitsAtom.reportRead();
    return super.units;
  }

  @override
  set units(List<UnitModel> value) {
    _$unitsAtom.reportWrite(value, super.units, () {
      super.units = value;
    });
  }

  late final _$fetchAccountServiceAsyncAction =
      AsyncAction('_HomeViewModelBase.fetchAccountService', context: context);

  @override
  Future<void> fetchAccountService() {
    return _$fetchAccountServiceAsyncAction
        .run(() => super.fetchAccountService());
  }

  late final _$fetchHomeUnitsServiceAsyncAction =
      AsyncAction('_HomeViewModelBase.fetchHomeUnitsService', context: context);

  @override
  Future<void> fetchHomeUnitsService() {
    return _$fetchHomeUnitsServiceAsyncAction
        .run(() => super.fetchHomeUnitsService());
  }

  late final _$questionPageAsyncAction =
      AsyncAction('_HomeViewModelBase.questionPage', context: context);

  @override
  Future<void> questionPage(Sections data) {
    return _$questionPageAsyncAction.run(() => super.questionPage(data));
  }

  late final _$seriesContinueAsyncAction =
      AsyncAction('_HomeViewModelBase.seriesContinue', context: context);

  @override
  Future<void> seriesContinue() {
    return _$seriesContinueAsyncAction.run(() => super.seriesContinue());
  }

  late final _$accountSeriesRefreshAsyncAction =
      AsyncAction('_HomeViewModelBase.accountSeriesRefresh', context: context);

  @override
  Future<void> accountSeriesRefresh() {
    return _$accountSeriesRefreshAsyncAction
        .run(() => super.accountSeriesRefresh());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
diamondLoading: ${diamondLoading},
seriesRefreshLoading: ${seriesRefreshLoading},
selectedLevelId: ${selectedLevelId},
selectedLevelText: ${selectedLevelText},
finishPage: ${finishPage},
account: ${account},
units: ${units}
    ''';
  }
}
