// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ForgotViewModel on _ForgotViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_ForgotViewModelBase.loading', context: context);

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

  late final _$forgotCreateCodeAsyncAction =
      AsyncAction('_ForgotViewModelBase.forgotCreateCode', context: context);

  @override
  Future<void> forgotCreateCode() {
    return _$forgotCreateCodeAsyncAction.run(() => super.forgotCreateCode());
  }

  late final _$loginToPageAsyncAction =
      AsyncAction('_ForgotViewModelBase.loginToPage', context: context);

  @override
  Future<void> loginToPage() {
    return _$loginToPageAsyncAction.run(() => super.loginToPage());
  }

  late final _$forgotRefreshToPageAsyncAction =
      AsyncAction('_ForgotViewModelBase.forgotRefreshToPage', context: context);

  @override
  Future<void> forgotRefreshToPage() {
    return _$forgotRefreshToPageAsyncAction
        .run(() => super.forgotRefreshToPage());
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
