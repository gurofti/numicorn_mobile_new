// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeUnitsModel _$HomeUnitsModelFromJson(Map<String, dynamic> json) =>
    HomeUnitsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HomeUnitsModelToJson(HomeUnitsModel instance) =>
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
      lang: json['lang'] == null
          ? null
          : Lang.fromJson(json['lang'] as Map<String, dynamic>),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Sections.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnitModelToJson(UnitModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'listNo': instance.listNo,
      'langId': instance.langId,
      'lang': instance.lang,
      'sections': instance.sections,
    };

Lang _$LangFromJson(Map<String, dynamic> json) => Lang(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$LangToJson(Lang instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

Sections _$SectionsFromJson(Map<String, dynamic> json) => Sections(
      path: json['path'] as String?,
      id: json['id'] as int?,
      unitId: json['unitId'] as int?,
      title: json['title'] as String?,
      listNo: json['listNo'] as int?,
      url: json['url'] as String?,
      gridCross: json['gridCross'] as int?,
      lessons: json['lessons'] as String?,
      lessonCompleted: json['lessonCompleted'] as String?,
      levelEasy: json['levelEasy'] as String?,
      levelMiddle: json['levelMiddle'] as String?,
      levelHard: json['levelHard'] as String?,
      levelEasyCompleted: json['levelEasyCompleted'] as String?,
      levelMiddleCompleted: json['levelMiddleCompleted'] as String?,
      levelHardCompleted: json['levelHardCompleted'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      y: (json['y'] as num?)?.toDouble(),
      level: json['level'] as int?,
      question: json['question'] == null
          ? null
          : QuestionModel.fromJson(json['question'] as Map<String, dynamic>),
      lastSecond: json['lastSecond'] as int?,
      again: json['again'] as bool?,
    );

Map<String, dynamic> _$SectionsToJson(Sections instance) => <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'unitId': instance.unitId,
      'title': instance.title,
      'listNo': instance.listNo,
      'url': instance.url,
      'gridCross': instance.gridCross,
      'lessons': instance.lessons,
      'lessonCompleted': instance.lessonCompleted,
      'levelEasy': instance.levelEasy,
      'levelMiddle': instance.levelMiddle,
      'levelHard': instance.levelHard,
      'levelEasyCompleted': instance.levelEasyCompleted,
      'levelMiddleCompleted': instance.levelMiddleCompleted,
      'levelHardCompleted': instance.levelHardCompleted,
      'width': instance.width,
      'height': instance.height,
      'y': instance.y,
      'level': instance.level,
      'question': instance.question,
      'lastSecond': instance.lastSecond,
      'again': instance.again,
    };
