// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_order_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LevelOrderViewModel on _LevelOrderViewModelBase, Store {
  late final _$loadingAtom =
      Atom(name: '_LevelOrderViewModelBase.loading', context: context);

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

  late final _$leadersAtom =
      Atom(name: '_LevelOrderViewModelBase.leaders', context: context);

  @override
  List<DataModel> get leaders {
    _$leadersAtom.reportRead();
    return super.leaders;
  }

  @override
  set leaders(List<DataModel> value) {
    _$leadersAtom.reportWrite(value, super.leaders, () {
      super.leaders = value;
    });
  }

  late final _$fetchLeadersServiceAsyncAction = AsyncAction(
      '_LevelOrderViewModelBase.fetchLeadersService',
      context: context);

  @override
  Future<void> fetchLeadersService() {
    return _$fetchLeadersServiceAsyncAction
        .run(() => super.fetchLeadersService());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
leaders: ${leaders}
    ''';
  }
}
