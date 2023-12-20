// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_sections_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialSectionsModel _$TrialSectionsModelFromJson(Map<String, dynamic> json) =>
    TrialSectionsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TrialSectionsModelToJson(TrialSectionsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

UnitModel _$UnitModelFromJson(Map<String, dynamic> json) => UnitModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      listNo: json['listNo'] as int?,
      langId: json['langId'] as int?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnitModelToJson(UnitModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'listNo': instance.listNo,
      'langId': instance.langId,
      'sections': instance.sections,
    };

SectionsModel _$SectionsModelFromJson(Map<String, dynamic> json) =>
    SectionsModel(
      path: json['path'] as String?,
      id: json['id'] as int?,
      unitId: json['unitId'] as int?,
      title: json['title'] as String?,
      listNo: json['listNo'] as int?,
      url: json['url'] as String?,
      easy: json['easy'] as int? ?? 0,
      middle: json['middle'] as int? ?? 0,
      hard: json['hard'] as int? ?? 0,
    );

Map<String, dynamic> _$SectionsModelToJson(SectionsModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'unitId': instance.unitId,
      'title': instance.title,
      'listNo': instance.listNo,
      'url': instance.url,
      'easy': instance.easy,
      'middle': instance.middle,
      'hard': instance.hard,
    };
