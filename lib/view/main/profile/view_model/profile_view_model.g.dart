// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileViewModel on _ProfileViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_ProfileViewModelBase.loading', context: context);

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

  late final _$profileModelAtom =
      Atom(name: '_ProfileViewModelBase.profileModel', context: context);

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

  late final _$fetchProfileServiceAsyncAction = AsyncAction(
      '_ProfileViewModelBase.fetchProfileService',
      context: context);

  @override
  Future<void> fetchProfileService() {
    return _$fetchProfileServiceAsyncAction
        .run(() => super.fetchProfileService());
  }

  late final _$getImageFromGalleryAsyncAction = AsyncAction(
      '_ProfileViewModelBase.getImageFromGallery',
      context: context);

  @override
  Future<void> getImageFromGallery() {
    return _$getImageFromGalleryAsyncAction
        .run(() => super.getImageFromGallery());
  }

  late final _$settingPageAsyncAction =
      AsyncAction('_ProfileViewModelBase.settingPage', context: context);

  @override
  Future<void> settingPage() {
    return _$settingPageAsyncAction.run(() => super.settingPage());
  }

  late final _$_ProfileViewModelBaseActionController =
      ActionController(name: '_ProfileViewModelBase', context: context);

  @override
  String getInitials(String text) {
    final _$actionInfo = _$_ProfileViewModelBaseActionController.startAction(
        name: '_ProfileViewModelBase.getInitials');
    try {
      return super.getInitials(text);
    } finally {
      _$_ProfileViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
profileModel: ${profileModel}
    ''';
  }
}
