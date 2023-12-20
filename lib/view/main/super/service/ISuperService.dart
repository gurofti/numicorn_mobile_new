import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_create_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_request_model.dart';

abstract class ISuperService {
  BuildContext context;
  ISuperService(this.context);

  Future<dynamic> fetchTrialSections();
  Future<dynamic> createTrial(TrialCreateRequestModel data);
  Future<dynamic> fetchTrials(TrialRequestModel trialRequestModel);
}
