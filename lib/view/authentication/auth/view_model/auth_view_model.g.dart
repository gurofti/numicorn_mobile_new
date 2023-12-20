// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthViewModel on _AuthViewModelBase, Store {
  late final _$testAtom =
      Atom(name: '_AuthViewModelBase.test', context: context);

  @override
  String get test {
    _$testAtom.reportRead();
    return super.test;
  }

  @override
  set test(String value) {
    _$testAtom.reportWrite(value, super.test, () {
      super.test = value;
    });
  }

  late final _$loginPageAsyncAction =
      AsyncAction('_AuthViewModelBase.loginPage', context: context);

  @override
  Future<void> loginPage() {
    return _$loginPageAsyncAction.run(() => super.loginPage());
  }

  late final _$registerPageAsyncAction =
      AsyncAction('_AuthViewModelBase.registerPage', context: context);

  @override
  Future<void> registerPage() {
    return _$registerPageAsyncAction.run(() => super.registerPage());
  }

  @override
  String toString() {
    return '''
test: ${test}
    ''';
  }
}
