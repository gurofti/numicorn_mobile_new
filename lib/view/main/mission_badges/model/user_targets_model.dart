import 'package:json_annotation/json_annotation.dart';

part 'user_targets_model.g.dart';

@JsonSerializable()
class UserTargetsModel {
  DataModel? data;
  String? message;

  UserTargetsModel({this.data, this.message});

  UserTargetsModel fromJson(Map<String, dynamic> json) {
    return _$UserTargetsModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserTargetsModelToJson(this);
  }
}

@JsonSerializable()
class DataModel {
  TargetModel? target;
  Tasks? tasks;
  List<RosettesModel>? rosettes;
  String? monthText;

  DataModel({
    this.target,
    this.tasks,
    this.rosettes,
    this.monthText,
  });

  @override
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return _$DataModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$DataModelToJson(this);
  }
}

@JsonSerializable()
class TargetModel {
  String? path;
  int? id;
  String? title;
  String? description;
  String? startDate;
  int? targetSum;

  TargetModel({
    this.path,
    this.id,
    this.title,
    this.description,
    this.startDate,
    this.targetSum,
  });

  @override
  factory TargetModel.fromJson(Map<String, dynamic> json) {
    return _$TargetModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TargetModelToJson(this);
  }
}

class Tasks {
  int? id;
  String? title;
  String? path;
  int? day;
  List<TaskLevels>? taskLevels;

  Tasks({this.path, this.id, this.title, this.day, this.taskLevels});

  Tasks.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    id = json['id'];
    title = json['title'];
    day = json['day'];
    if (json['taskLevels'] != null) {
      taskLevels = <TaskLevels>[];
      json['taskLevels'].forEach((v) {
        taskLevels!.add(new TaskLevels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['id'] = this.id;
    data['title'] = this.title;
    data['day'] = this.day;
    if (this.taskLevels != null) {
      data['taskLevels'] = this.taskLevels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TaskLevels {
  int? id;
  String? title;
  String? path;
  int? taskId;
  int? transactionId;
  int? transactionDetail;
  int? listNo;
  int? value;
  bool? view;

  TaskLevels({
    this.id,
    this.title,
    this.path,
    this.taskId,
    this.transactionId,
    this.transactionDetail,
    this.listNo,
    this.value,
    this.view,
  });

  TaskLevels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    path = json['path'];
    taskId = json['task_id'];
    transactionId = json['transaction_id'];
    transactionDetail = json['transaction_detail'];
    listNo = json['list_no'];
    value = json['value'];
    view = json['view'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['path'] = this.path;
    data['task_id'] = this.taskId;
    data['transaction_id'] = this.transactionId;
    data['transaction_detail'] = this.transactionDetail;
    data['list_no'] = this.listNo;
    data['value'] = this.value;
    data['view'] = this.view;
    return data;
  }
}

@JsonSerializable()
class RosettesModel {
  int? id;
  int? userId;
  int? targetId;
  String? createdAt;
  String? updatedAt;
  UserTargetModel? target;

  RosettesModel(
      {this.id,
      this.userId,
      this.targetId,
      this.createdAt,
      this.updatedAt,
      this.target});

  @override
  factory RosettesModel.fromJson(Map<String, dynamic> json) {
    return _$RosettesModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RosettesModelToJson(this);
  }
}

@JsonSerializable()
class UserTargetModel {
  String? path;
  int? id;
  String? title;
  String? startDate;
  LanguageModel? language;

  UserTargetModel(
      {this.path, this.id, this.title, this.startDate, this.language});

  @override
  factory UserTargetModel.fromJson(Map<String, dynamic> json) {
    return _$UserTargetModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserTargetModelToJson(this);
  }
}

@JsonSerializable()
class LanguageModel {
  int? id;
  int? langId;
  int? targetId;
  String? title;
  String? description;

  LanguageModel(
      {this.id, this.langId, this.targetId, this.title, this.description});

  @override
  factory LanguageModel.fromJson(Map<String, dynamic> json) {
    return _$LanguageModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LanguageModelToJson(this);
  }
}
