// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_badges_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MissionBadgesViewModel on _MissionBadgesViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_MissionBadgesViewModelBase.loading', context: context);

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

  late final _$dataModelAtom =
      Atom(name: '_MissionBadgesViewModelBase.dataModel', context: context);

  @override
  DataModel get dataModel {
    _$dataModelAtom.reportRead();
    return super.dataModel;
  }

  @override
  set dataModel(DataModel value) {
    _$dataModelAtom.reportWrite(value, super.dataModel, () {
      super.dataModel = value;
    });
  }

  late final _$fetchTargetsServiceAsyncAction = AsyncAction(
      '_MissionBadgesViewModelBase.fetchTargetsService',
      context: context);

  @override
  Future<void> fetchTargetsService() {
    return _$fetchTargetsServiceAsyncAction
        .run(() => super.fetchTargetsService());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
dataModel: ${dataModel}
    ''';
  }
}
