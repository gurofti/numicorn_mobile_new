import 'package:json_annotation/json_annotation.dart';
part 'question_response_model.g.dart';

@JsonSerializable()
class QuestionResponseModel {
  QuestionModel? data;
  String? message;

  QuestionResponseModel({this.data, this.message});

  @override
  QuestionResponseModel fromJson(Map<String, dynamic> json) {
    return _$QuestionResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionResponseModelToJson(this);
  }
}

@JsonSerializable()
class QuestionModel {
  String? path;
  int? id;
  int? diamond;
  int? heart;
  int? cup;
  bool? is_image;
  List<TargetModel>? targets;
  RosetteModel? rosette;
  int? type;
  String? value;
  String? title;
  int? answer;
  List<Answers>? answers;
  List<Items>? items;
  List<AchievementModel>? achievements;
  int? questionTotal;
  int? solvedTotal;
  int? againLevel;
  String? answer_detail;
  String? answer_path;
  bool? openedAnswer;
  int? notBeWrongQuestion;
  bool? userDoping;
  bool? is_repeat;
  bool? newDoping;
  int? totalQuestion;

  QuestionModel({
    this.path,
    this.id,
    this.diamond,
    this.heart,
    this.cup,
    this.is_image,
    this.targets,
    this.rosette,
    this.type,
    this.value,
    this.title,
    this.answer,
    this.answers,
    this.items,
    this.questionTotal,
    this.solvedTotal,
    this.answer_detail,
    this.answer_path,
    this.userDoping,
    this.is_repeat,
    this.againLevel,
    this.newDoping,
    this.openedAnswer,
    this.notBeWrongQuestion,
    this.totalQuestion,
  });

  @override
  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return _$QuestionModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionModelToJson(this);
  }
}

@JsonSerializable()
class Answers {
  String? path;
  int? id;
  @JsonKey(name: 'question_id')
  int? questionId;
  @JsonKey(name: 'is_image')
  bool? isImage;
  int? value;
  @JsonKey(name: 'list_no')
  int? listNo;

  Answers(
      {this.path,
      this.id,
      this.questionId,
      this.isImage,
      this.value,
      this.listNo});

  @override
  factory Answers.fromJson(Map<String, dynamic> json) {
    return _$AnswersFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AnswersToJson(this);
  }
}

@JsonSerializable()
class Items {
  @JsonKey(name: 'question_path')
  String? questionPath;
  @JsonKey(name: 'answer_path')
  String? answerPath;
  int? id;
  @JsonKey(name: 'question_id')
  int? questionId;
  String? question;
  @JsonKey(name: 'question_is_image')
  bool? questionIsImage;
  String? answer;
  @JsonKey(name: 'answer_is_image')
  bool? answerIsImage;
  int? listNo;

  Items({
    this.questionPath,
    this.answerPath,
    this.id,
    this.questionId,
    this.question,
    this.questionIsImage,
    this.answer,
    this.answerIsImage,
    this.listNo,
  });

  @override
  factory Items.fromJson(Map<String, dynamic> json) {
    return _$ItemsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ItemsToJson(this);
  }
}

@JsonSerializable()
class TargetModel {
  int? id;
  int? target;
  int? value;
  bool? view;
  String? title;
  String? path;

  TargetModel({
    this.id,
    this.target,
    this.value,
    this.view,
    this.title,
    this.path,
  });

  @override
  factory TargetModel.fromJson(Map<String, dynamic> json) {
    return _$TargetModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TargetModelToJson(this);
  }
}

@JsonSerializable()
class AchievementModel {
  int? id;
  int? level;
  String? title;
  String? description;

  AchievementModel({
    this.id,
    this.level,
    this.title,
    this.description,
  });

  @override
  factory AchievementModel.fromJson(Map<String, dynamic> json) {
    return _$AchievementModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AchievementModelToJson(this);
  }
}

@JsonSerializable()
class RosetteModel {
  int? id;
  String? title;
  String? start_date;
  String? path;
  TargetLanguage? language;

  RosetteModel({
    this.id,
    this.title,
    this.start_date,
    this.path,
    this.language,
  });

  @override
  factory RosetteModel.fromJson(Map<String, dynamic> json) {
    return _$RosetteModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RosetteModelToJson(this);
  }
}

@JsonSerializable()
class TargetLanguage {
  int? id;
  int? lang_id;
  int? target_id;
  String? title;
  String? description;

  TargetLanguage({
    this.id,
    this.lang_id,
    this.target_id,
    this.title,
    this.description,
  });

  @override
  factory TargetLanguage.fromJson(Map<String, dynamic> json) {
    return _$TargetLanguageFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TargetLanguageToJson(this);
  }
}
