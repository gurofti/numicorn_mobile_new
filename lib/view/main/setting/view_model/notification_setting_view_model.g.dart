// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotificationSettingViewModel
    on _NotificationSettingViewModelBase, Store {
  late final _$isLoadingAtom = Atom(
      name: '_NotificationSettingViewModelBase.isLoading', context: context);

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

  late final _$serialProtectionReminderAtom = Atom(
      name: '_NotificationSettingViewModelBase.serialProtectionReminder',
      context: context);

  @override
  bool get serialProtectionReminder {
    _$serialProtectionReminderAtom.reportRead();
    return super.serialProtectionReminder;
  }

  @override
  set serialProtectionReminder(bool value) {
    _$serialProtectionReminderAtom
        .reportWrite(value, super.serialProtectionReminder, () {
      super.serialProtectionReminder = value;
    });
  }

  late final _$marketingCampaignsAtom = Atom(
      name: '_NotificationSettingViewModelBase.marketingCampaigns',
      context: context);

  @override
  bool get marketingCampaigns {
    _$marketingCampaignsAtom.reportRead();
    return super.marketingCampaigns;
  }

  @override
  set marketingCampaigns(bool value) {
    _$marketingCampaignsAtom.reportWrite(value, super.marketingCampaigns, () {
      super.marketingCampaigns = value;
    });
  }

  late final _$productUpdatesAtom = Atom(
      name: '_NotificationSettingViewModelBase.productUpdates',
      context: context);

  @override
  bool get productUpdates {
    _$productUpdatesAtom.reportRead();
    return super.productUpdates;
  }

  @override
  set productUpdates(bool value) {
    _$productUpdatesAtom.reportWrite(value, super.productUpdates, () {
      super.productUpdates = value;
    });
  }

  late final _$learningTipsAtom = Atom(
      name: '_NotificationSettingViewModelBase.learningTips', context: context);

  @override
  bool get learningTips {
    _$learningTipsAtom.reportRead();
    return super.learningTips;
  }

  @override
  set learningTips(bool value) {
    _$learningTipsAtom.reportWrite(value, super.learningTips, () {
      super.learningTips = value;
    });
  }

  late final _$studentAchievementsAtom = Atom(
      name: '_NotificationSettingViewModelBase.studentAchievements',
      context: context);

  @override
  bool get studentAchievements {
    _$studentAchievementsAtom.reportRead();
    return super.studentAchievements;
  }

  @override
  set studentAchievements(bool value) {
    _$studentAchievementsAtom.reportWrite(value, super.studentAchievements, () {
      super.studentAchievements = value;
    });
  }

  late final _$accountSettingModelAtom = Atom(
      name: '_NotificationSettingViewModelBase.accountSettingModel',
      context: context);

  @override
  AccountSettingModel get accountSettingModel {
    _$accountSettingModelAtom.reportRead();
    return super.accountSettingModel;
  }

  @override
  set accountSettingModel(AccountSettingModel value) {
    _$accountSettingModelAtom.reportWrite(value, super.accountSettingModel, () {
      super.accountSettingModel = value;
    });
  }

  late final _$fetchAccountSettingServiceAsyncAction = AsyncAction(
      '_NotificationSettingViewModelBase.fetchAccountSettingService',
      context: context);

  @override
  Future<void> fetchAccountSettingService() {
    return _$fetchAccountSettingServiceAsyncAction
        .run(() => super.fetchAccountSettingService());
  }

  late final _$accountSettingdUpdateAsyncAction = AsyncAction(
      '_NotificationSettingViewModelBase.accountSettingdUpdate',
      context: context);

  @override
  Future<void> accountSettingdUpdate() {
    return _$accountSettingdUpdateAsyncAction
        .run(() => super.accountSettingdUpdate());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
serialProtectionReminder: ${serialProtectionReminder},
marketingCampaigns: ${marketingCampaigns},
productUpdates: ${productUpdates},
learningTips: ${learningTips},
studentAchievements: ${studentAchievements},
accountSettingModel: ${accountSettingModel}
    ''';
  }
}
