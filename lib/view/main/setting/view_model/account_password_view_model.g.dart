// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_password_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AccountPasswordViewModel on _AccountPasswordViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_AccountPasswordViewModelBase.loading', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_AccountPasswordViewModelBase.isLoading', context: context);

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

  late final _$formLoadingAtom =
      Atom(name: '_AccountPasswordViewModelBase.formLoading', context: context);

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

  late final _$isLockOpenAtom =
      Atom(name: '_AccountPasswordViewModelBase.isLockOpen', context: context);

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

  late final _$profileModelAtom = Atom(
      name: '_AccountPasswordViewModelBase.profileModel', context: context);

  @override
  UserProfileModel get profileModel {
    _$profileModelAtom.reportRead();
    return super.profileModel;
  }

  @override
  set profileModel(UserProfileModel value) {
    _$profileModelAtom.reportWrite(value, super.profileModel, () {
      super.profileModel = value;
    });
  }

  late final _$accountPasswordUpdateAsyncAction = AsyncAction(
      '_AccountPasswordViewModelBase.accountPasswordUpdate',
      context: context);

  @override
  Future<void> accountPasswordUpdate() {
    return _$accountPasswordUpdateAsyncAction
        .run(() => super.accountPasswordUpdate());
  }

  late final _$accountSettingAsyncAction = AsyncAction(
      '_AccountPasswordViewModelBase.accountSetting',
      context: context);

  @override
  Future<void> accountSetting() {
    return _$accountSettingAsyncAction.run(() => super.accountSetting());
  }

  late final _$passwordChangeAsyncAction = AsyncAction(
      '_AccountPasswordViewModelBase.passwordChange',
      context: context);

  @override
  Future<void> passwordChange() {
    return _$passwordChangeAsyncAction.run(() => super.passwordChange());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
isLoading: ${isLoading},
formLoading: ${formLoading},
isLockOpen: ${isLockOpen},
profileModel: ${profileModel}
    ''';
  }
}
