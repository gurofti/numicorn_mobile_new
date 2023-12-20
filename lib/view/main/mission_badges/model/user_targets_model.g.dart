// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_targets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTargetsModel _$UserTargetsModelFromJson(Map<String, dynamic> json) =>
    UserTargetsModel(
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserTargetsModelToJson(UserTargetsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      target: json['target'] == null
          ? null
          : TargetModel.fromJson(json['target'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : Tasks.fromJson(json['tasks'] as Map<String, dynamic>),
      rosettes: (json['rosettes'] as List<dynamic>?)
          ?.map((e) => RosettesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthText: json['monthText'] as String?,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'target': instance.target,
      'tasks': instance.tasks,
      'rosettes': instance.rosettes,
      'monthText': instance.monthText,
    };

TargetModel _$TargetModelFromJson(Map<String, dynamic> json) => TargetModel(
      path: json['path'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startDate: json['startDate'] as String?,
      targetSum: json['targetSum'] as int?,
    );

Map<String, dynamic> _$TargetModelToJson(TargetModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate,
      'targetSum': instance.targetSum,
    };

RosettesModel _$RosettesModelFromJson(Map<String, dynamic> json) =>
    RosettesModel(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      targetId: json['targetId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      target: json['target'] == null
          ? null
          : UserTargetModel.fromJson(json['target'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RosettesModelToJson(RosettesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetId': instance.targetId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'target': instance.target,
    };

UserTargetModel _$UserTargetModelFromJson(Map<String, dynamic> json) =>
    UserTargetModel(
      path: json['path'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      startDate: json['startDate'] as String?,
      language: json['language'] == null
          ? null
          : LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTargetModelToJson(UserTargetModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'title': instance.title,
      'startDate': instance.startDate,
      'language': instance.language,
    };

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    LanguageModel(
      id: json['id'] as int?,
      langId: json['langId'] as int?,
      targetId: json['targetId'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'langId': instance.langId,
      'targetId': instance.targetId,
      'title': instance.title,
      'description': instance.description,
    };
