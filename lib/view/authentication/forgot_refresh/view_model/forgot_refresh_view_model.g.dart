// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_refresh_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ForgotRefreshViewModel on _ForgotRefreshViewModelBase, Store {
  late final _$isLockOpenAtom =
      Atom(name: '_ForgotRefreshViewModelBase.isLockOpen', context: context);

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

  late final _$loadingAtom =
      Atom(name: '_ForgotRefreshViewModelBase.loading', context: context);

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

  late final _$loginToPageAsyncAction =
      AsyncAction('_ForgotRefreshViewModelBase.loginToPage', context: context);

  @override
  Future<void> loginToPage() {
    return _$loginToPageAsyncAction.run(() => super.loginToPage());
  }

  late final _$handleRefreshPasswordAsyncAction = AsyncAction(
      '_ForgotRefreshViewModelBase.handleRefreshPassword',
      context: context);

  @override
  Future<void> handleRefreshPassword() {
    return _$handleRefreshPasswordAsyncAction
        .run(() => super.handleRefreshPassword());
  }

  late final _$loginPageAsyncAction =
      AsyncAction('_ForgotRefreshViewModelBase.loginPage', context: context);

  @override
  Future<void> loginPage() {
    return _$loginPageAsyncAction.run(() => super.loginPage());
  }

  @override
  String toString() {
    return '''
isLockOpen: ${isLockOpen},
loading: ${loading}
    ''';
  }
}
