// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionResponseModel _$QuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    QuestionResponseModel(
      data: json['data'] == null
          ? null
          : QuestionModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$QuestionResponseModelToJson(
        QuestionResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      path: json['path'] as String?,
      id: json['id'] as int?,
      diamond: json['diamond'] as int?,
      heart: json['heart'] as int?,
      cup: json['cup'] as int?,
      is_image: json['is_image'] as bool?,
      targets: (json['targets'] as List<dynamic>?)
          ?.map((e) => TargetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rosette: json['rosette'] == null
          ? null
          : RosetteModel.fromJson(json['rosette'] as Map<String, dynamic>),
      type: json['type'] as int?,
      value: json['value'] as String?,
      title: json['title'] as String?,
      answer: json['answer'] as int?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answers.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionTotal: json['questionTotal'] as int?,
      solvedTotal: json['solvedTotal'] as int?,
      answer_detail: json['answer_detail'] as String?,
      answer_path: json['answer_path'] as String?,
      userDoping: json['userDoping'] as bool?,
      is_repeat: json['is_repeat'] as bool?,
      againLevel: json['againLevel'] as int?,
      newDoping: json['newDoping'] as bool?,
      favorite: json['favorite'] as bool?,
      openedAnswer: json['openedAnswer'] as bool?,
      notBeWrongQuestion: json['notBeWrongQuestion'] as int?,
      totalQuestion: json['totalQuestion'] as int?,
    )..achievements = (json['achievements'] as List<dynamic>?)
        ?.map((e) => AchievementModel.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'diamond': instance.diamond,
      'heart': instance.heart,
      'cup': instance.cup,
      'is_image': instance.is_image,
      'targets': instance.targets,
      'rosette': instance.rosette,
      'type': instance.type,
      'value': instance.value,
      'title': instance.title,
      'answer': instance.answer,
      'answers': instance.answers,
      'items': instance.items,
      'achievements': instance.achievements,
      'questionTotal': instance.questionTotal,
      'solvedTotal': instance.solvedTotal,
      'againLevel': instance.againLevel,
      'answer_detail': instance.answer_detail,
      'answer_path': instance.answer_path,
      'openedAnswer': instance.openedAnswer,
      'notBeWrongQuestion': instance.notBeWrongQuestion,
      'userDoping': instance.userDoping,
      'is_repeat': instance.is_repeat,
      'newDoping': instance.newDoping,
      'favorite': instance.favorite,
      'totalQuestion': instance.totalQuestion,
    };

Answers _$AnswersFromJson(Map<String, dynamic> json) => Answers(
      path: json['path'] as String?,
      id: json['id'] as int?,
      questionId: json['question_id'] as int?,
      isImage: json['is_image'] as bool?,
      value: json['value'] as int?,
      listNo: json['list_no'] as int?,
    );

Map<String, dynamic> _$AnswersToJson(Answers instance) => <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'question_id': instance.questionId,
      'is_image': instance.isImage,
      'value': instance.value,
      'list_no': instance.listNo,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      questionPath: json['question_path'] as String?,
      answerPath: json['answer_path'] as String?,
      id: json['id'] as int?,
      questionId: json['question_id'] as int?,
      question: json['question'] as String?,
      questionIsImage: json['question_is_image'] as bool?,
      answer: json['answer'] as String?,
      answerIsImage: json['answer_is_image'] as bool?,
      listNo: json['listNo'] as int?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'question_path': instance.questionPath,
      'answer_path': instance.answerPath,
      'id': instance.id,
      'question_id': instance.questionId,
      'question': instance.question,
      'question_is_image': instance.questionIsImage,
      'answer': instance.answer,
      'answer_is_image': instance.answerIsImage,
      'listNo': instance.listNo,
    };

TargetModel _$TargetModelFromJson(Map<String, dynamic> json) => TargetModel(
      id: json['id'] as int?,
      target: json['target'] as int?,
      value: json['value'] as int?,
      view: json['view'] as bool?,
      title: json['title'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$TargetModelToJson(TargetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'target': instance.target,
      'value': instance.value,
      'view': instance.view,
      'title': instance.title,
      'path': instance.path,
    };

AchievementModel _$AchievementModelFromJson(Map<String, dynamic> json) =>
    AchievementModel(
      id: json['id'] as int?,
      level: json['level'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AchievementModelToJson(AchievementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'title': instance.title,
      'description': instance.description,
    };

RosetteModel _$RosetteModelFromJson(Map<String, dynamic> json) => RosetteModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      start_date: json['start_date'] as String?,
      path: json['path'] as String?,
      language: json['language'] == null
          ? null
          : TargetLanguage.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RosetteModelToJson(RosetteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'start_date': instance.start_date,
      'path': instance.path,
      'language': instance.language,
    };

TargetLanguage _$TargetLanguageFromJson(Map<String, dynamic> json) =>
    TargetLanguage(
      id: json['id'] as int?,
      lang_id: json['lang_id'] as int?,
      target_id: json['target_id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TargetLanguageToJson(TargetLanguage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lang_id': instance.lang_id,
      'target_id': instance.target_id,
      'title': instance.title,
      'description': instance.description,
    };
