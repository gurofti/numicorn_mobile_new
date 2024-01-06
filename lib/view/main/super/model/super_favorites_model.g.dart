// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_favorites_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteSectionsResponse _$FavoriteSectionsResponseFromJson(
        Map<String, dynamic> json) =>
    FavoriteSectionsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UnitsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FavoriteSectionsResponseToJson(
        FavoriteSectionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

UnitsModel _$UnitsModelFromJson(Map<String, dynamic> json) => UnitsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      listNo: json['listNo'] as int?,
      langId: json['langId'] as int?,
      lang: json['lang'] == null
          ? null
          : Lang.fromJson(json['lang'] as Map<String, dynamic>),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnitsModelToJson(UnitsModel instance) =>
    <String, dynamic>{
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

SectionsModel _$SectionsModelFromJson(Map<String, dynamic> json) =>
    SectionsModel(
      path: json['path'] as String?,
      id: json['id'] as int?,
      unitId: json['unitId'] as int?,
      title: json['title'] as String?,
      listNo: json['listNo'] as int?,
      url: json['url'] as String?,
      favoriteQuestionCount: json['favoriteQuestionCount'] as String?,
    );

Map<String, dynamic> _$SectionsModelToJson(SectionsModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'unitId': instance.unitId,
      'title': instance.title,
      'listNo': instance.listNo,
      'url': instance.url,
      'favoriteQuestionCount': instance.favoriteQuestionCount,
    };
