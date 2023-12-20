// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trials_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialsResponseModel _$TrialsResponseModelFromJson(Map<String, dynamic> json) =>
    TrialsResponseModel(
      data: json['data'] == null
          ? null
          : TrialsDataModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TrialsResponseModelToJson(
        TrialsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

TrialsDataModel _$TrialsDataModelFromJson(Map<String, dynamic> json) =>
    TrialsDataModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TrialItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: json['totalItems'] as int?,
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
    );

Map<String, dynamic> _$TrialsDataModelToJson(TrialsDataModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
    };

TrialItemModel _$TrialItemModelFromJson(Map<String, dynamic> json) =>
    TrialItemModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      title: json['title'] as String?,
      time: json['time'] as int?,
      finishTime: json['finish_time'] as int?,
      passQuestionCount: json['passQuestionCount'] as String?,
      trueQuestionCount: json['trueQuestionCount'] as String?,
      falseQuestionCount: json['falseQuestionCount'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$TrialItemModelToJson(TrialItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'time': instance.time,
      'passQuestionCount': instance.passQuestionCount,
      'trueQuestionCount': instance.trueQuestionCount,
      'falseQuestionCount': instance.falseQuestionCount,
      'finish_time': instance.finishTime,
      'created_at': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
