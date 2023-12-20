// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionAnswerDetailViewModel
    on _QuestionAnswerDetailViewModelBase, Store {
  late final _$sectionAtom = Atom(
      name: '_QuestionAnswerDetailViewModelBase.section', context: context);

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

  late final _$questionPageAsyncAction = AsyncAction(
      '_QuestionAnswerDetailViewModelBase.questionPage',
      context: context);

  @override
  Future<void> questionPage() {
    return _$questionPageAsyncAction.run(() => super.questionPage());
  }

  @override
  String toString() {
    return '''
section: ${section}
    ''';
  }
}
