import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';

part 'home_units_model.g.dart';

@JsonSerializable()
class HomeUnitsModel {
  List<UnitModel>? data;
  String? message;

  HomeUnitsModel({this.data, this.message});

  @override
  HomeUnitsModel fromJson(Map<String, dynamic> json) {
    return _$HomeUnitsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$HomeUnitsModelToJson(this);
  }
}

@JsonSerializable()
class UnitModel {
  int? id;
  String? title;
  String? description;
  int? listNo;
  int? langId;
  Lang? lang;
  List<Sections>? sections;

  UnitModel(
      {this.id,
      this.title,
      this.description,
      this.listNo,
      this.langId,
      this.lang,
      this.sections});

  UnitModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    listNo = json['list_no'];
    langId = json['lang_id'];
    lang = json['lang'] != null ? new Lang.fromJson(json['lang']) : null;
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['list_no'] = this.listNo;
    data['lang_id'] = this.langId;
    if (this.lang != null) {
      data['lang'] = this.lang!.toJson();
    }
    if (this.sections != null) {
      data['sections'] = this.sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@JsonSerializable()
class Lang {
  int? id;
  String? name;
  String? slug;

  Lang({this.id, this.name, this.slug});

  Lang.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}

@JsonSerializable()
class Sections {
  String? path;
  int? id;
  int? unitId;
  String? title;
  int? listNo;
  String? url;
  int? gridCross;
  String? lessons;
  String? lessonCompleted;
  String? levelEasy;
  String? levelMiddle;
  String? levelHard;
  String? levelEasyCompleted;
  String? levelMiddleCompleted;
  String? levelHardCompleted;
  String? width;
  String? height;
  double? y;
  int? level;
  QuestionModel? question;
  int? lastSecond;
  bool? again;
  int? trialId;
  int? wrongSectionId;
  bool? trialResult;
  bool? trialAgain;

  Sections({
    this.path,
    this.id,
    this.unitId,
    this.title,
    this.listNo,
    this.url,
    this.gridCross,
    this.lessons,
    this.lessonCompleted,
    this.levelEasy,
    this.levelMiddle,
    this.levelHard,
    this.levelEasyCompleted,
    this.levelMiddleCompleted,
    this.levelHardCompleted,
    this.width,
    this.height,
    this.y,
    this.level,
    this.question,
    this.lastSecond,
    this.again,
    this.trialId,
    this.wrongSectionId,
    this.trialResult,
    this.trialAgain,
  });

  Sections.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    id = json['id'];
    unitId = json['unit_id'];
    title = json['title'];
    listNo = json['list_no'];
    url = json['url'];
    gridCross = json['grid_cross'];
    lessons = json['lessons'];
    lessonCompleted = json['lessonCompleted'];
    levelEasy = json['levelEasy'];
    levelMiddle = json['levelMiddle'];
    levelHard = json['levelHard'];
    levelEasyCompleted = json['levelEasyCompleted'];
    levelMiddleCompleted = json['levelMiddleCompleted'];
    levelHardCompleted = json['levelHardCompleted'];
    width = json['width'];
    height = json['height'];
    y = json['y'];
    level = json['level'];
    question = json['question'];
    lastSecond = json['lastSecond'];
    again = json['again'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['id'] = this.id;
    data['unit_id'] = this.unitId;
    data['title'] = this.title;
    data['list_no'] = this.listNo;
    data['url'] = this.url;
    data['grid_cross'] = this.gridCross;
    data['lessons'] = this.lessons;
    data['lessonCompleted'] = this.lessonCompleted;
    data['levelEasy'] = this.levelEasy;
    data['levelMiddle'] = this.levelMiddle;
    data['levelHard'] = this.levelHard;
    data['levelEasyCompleted'] = this.levelEasyCompleted;
    data['levelMiddleCompleted'] = this.levelMiddleCompleted;
    data['levelHardCompleted'] = this.levelHardCompleted;
    data['width'] = this.width;
    data['height'] = this.height;
    data['y'] = this.y;
    data['level'] = this.level;
    data['question'] = this.question;
    data['lastSecond'] = this.lastSecond;
    data['again'] = this.again;
    return data;
  }
}
