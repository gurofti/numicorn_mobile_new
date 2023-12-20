// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterViewModel on _RegisterViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_RegisterViewModelBase.isLoading', context: context);

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

  late final _$isLockOpenAtom =
      Atom(name: '_RegisterViewModelBase.isLockOpen', context: context);

  @override
  bool get isLockOpen {
    _$isLockOpenAtom.reportRead();
    return super.isLockOpen;
  }

  @override
  set isLockOpen(bool value) {
    _$isLockOpenAtom.reportWrite(value, super.isLockOpen, () {
      super.isLockOpen = value;
    });
  }

  late final _$isConfidentialityAgreementAtom = Atom(
      name: '_RegisterViewModelBase.isConfidentialityAgreement',
      context: context);

  @override
  bool get isConfidentialityAgreement {
    _$isConfidentialityAgreementAtom.reportRead();
    return super.isConfidentialityAgreement;
  }

  @override
  set isConfidentialityAgreement(bool value) {
    _$isConfidentialityAgreementAtom
        .reportWrite(value, super.isConfidentialityAgreement, () {
      super.isConfidentialityAgreement = value;
    });
  }

  late final _$loginToPageAsyncAction =
      AsyncAction('_RegisterViewModelBase.loginToPage', context: context);

  @override
  Future<void> loginToPage() {
    return _$loginToPageAsyncAction.run(() => super.loginToPage());
  }

  late final _$detailToPageAsyncAction =
      AsyncAction('_RegisterViewModelBase.detailToPage', context: context);

  @override
  Future<void> detailToPage() {
    return _$detailToPageAsyncAction.run(() => super.detailToPage());
  }

  late final _$registerAsyncAction =
      AsyncAction('_RegisterViewModelBase.register', context: context);

  @override
  Future<void> register() {
    return _$registerAsyncAction.run(() => super.register());
  }

  late final _$_RegisterViewModelBaseActionController =
      ActionController(name: '_RegisterViewModelBase', context: context);

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLockOpen: ${isLockOpen},
isConfidentialityAgreement: ${isConfidentialityAgreement}
    ''';
  }
}
