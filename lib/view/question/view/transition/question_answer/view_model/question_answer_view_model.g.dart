// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionAnswerViewModel on _QuestionAnswerViewModelBase, Store {
  late final _$sectionAtom =
      Atom(name: '_QuestionAnswerViewModelBase.section', context: context);

  @override
  Sections get section {
    _$sectionAtom.reportRead();
    return super.section;
  }

  @override
  set section(Sections value) {
    _$sectionAtom.reportWrite(value, super.section, () {
      super.section = value;
    });
  }

  late final _$backQuestionPageAsyncAction = AsyncAction(
      '_QuestionAnswerViewModelBase.backQuestionPage',
      context: context);

  @override
  Future<void> backQuestionPage() {
    return _$backQuestionPageAsyncAction.run(() => super.backQuestionPage());
  }

  late final _$detailPageAsyncAction =
      AsyncAction('_QuestionAnswerViewModelBase.detailPage', context: context);

  @override
  Future<void> detailPage() {
    return _$detailPageAsyncAction.run(() => super.detailPage());
  }

  @override
  String toString() {
    return '''
section: ${section}
    ''';
  }
}
