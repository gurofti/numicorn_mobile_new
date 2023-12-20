// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_transition_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionTransitionViewModel on _QuestionTransitionViewModelBase, Store {
  late final _$transitionModelAtom = Atom(
      name: '_QuestionTransitionViewModelBase.transitionModel',
      context: context);

  @override
  TransitionModel? get transitionModel {
    _$transitionModelAtom.reportRead();
    return super.transitionModel;
  }

  @override
  set transitionModel(TransitionModel? value) {
    _$transitionModelAtom.reportWrite(value, super.transitionModel, () {
      super.transitionModel = value;
    });
  }

  late final _$transitionPageAsyncAction = AsyncAction(
      '_QuestionTransitionViewModelBase.transitionPage',
      context: context);

  @override
  Future<void> transitionPage() {
    return _$transitionPageAsyncAction.run(() => super.transitionPage());
  }

  @override
  String toString() {
    return '''
transitionModel: ${transitionModel}
    ''';
  }
}
