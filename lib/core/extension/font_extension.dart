import 'dart:io';

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get pageWidth => mediaQuery.size.width;
  double get resWidth => pageWidth * 0.003;

  // Font Family - Weight
  String get fontFamily300 => 'PoppinsLight';
  String get fontFamily400 => 'PoppinsRegular';
  String get fontFamily500 => 'PoppinsMedium';
  String get fontFamily600 => 'PoppinsBold';
  String get fontFamily700 => 'PoppinsBold700';
  String get fontFamily800 => 'PoppinsBold800';
  String get fontFamily900 => 'PoppinsBold900';
}

extension FontScheme on BuildContext {
  // GLOBAL
  double get appBarHeader =>
      Platform.isAndroid ? (14.5 + resWidth) : (16.5 + resWidth);

  double get navigationItemSize =>
      Platform.isAndroid ? (resWidth + 86) : (resWidth + 45);
  double get navigationIconSize =>
      Platform.isAndroid ? (resWidth + 23) : (resWidth + 29);
  double get bottomSheetIcon =>
      Platform.isAndroid ? (resWidth + 20) : (resWidth + 22);

  double get componentHeader =>
      Platform.isAndroid ? (14.0 + resWidth) : (16.0 + resWidth);
  double get cardHeader =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get cardSecondText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get cardThirdText =>
      Platform.isAndroid ? (11.0 + resWidth) : (12.0 + resWidth);
  double get cardBadgesText =>
      Platform.isAndroid ? (11.0 + resWidth) : (12.0 + resWidth);
  double get cardSmallBadgesText =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.0 + resWidth);
  double get cardFavoriteIcon =>
      Platform.isAndroid ? (17.0 + resWidth) : (19.0 + resWidth);

  double get iCardHeaderText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get iCardSecondText =>
      Platform.isAndroid ? (11.0 + resWidth) : (12.0 + resWidth);

  double get advertStatusText =>
      Platform.isAndroid ? (10.5 + resWidth) : (11.5 + resWidth);
  double get advertActionText =>
      Platform.isAndroid ? (11.0 + resWidth) : (12.0 + resWidth);
  double get advertActionIcon =>
      Platform.isAndroid ? (14.0 + resWidth) : (16.5 + resWidth);

  double get popupMenuItemText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get popupMenuItemIcon =>
      Platform.isAndroid ? (14.0 + resWidth) : (16.5 + resWidth);

  double get alertDialogHeaderText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get alertDialogDescriptionText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get alertDialogButtonText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);

  double get popupComplainText =>
      Platform.isAndroid ? (15.0 + resWidth) : (17.0 + resWidth);
  double get popupComplainDescText =>
      Platform.isAndroid ? (14.0 + resWidth) : (16.0 + resWidth);
  double get popupComplainBtnText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);

  double get textLabelText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get textLabelDescText =>
      Platform.isAndroid ? (10.5 + resWidth) : (11.5 + resWidth);
  double get textFormFieldText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get autocompleteItem =>
      Platform.isAndroid ? (12.0 + resWidth) : (12.0 + resWidth);
  double get autocompleteIcon =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.0 + resWidth);
  double get formButtonText =>
      Platform.isAndroid ? (15.0 + resWidth) : (17.0 + resWidth);

  // CUSTOM
  double get notificationCardText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get notificationCardTimeText =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.0 + resWidth);

  double get avatarContainerHeaderText =>
      Platform.isAndroid ? (12.5 + resWidth) : (14.5 + resWidth);
  double get avatarContainerPhoneText =>
      Platform.isAndroid ? (11.5 + resWidth) : (12.5 + resWidth);
  double get avatarContainerPhoneIcon =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get avatarContainerPhotoChangeIcon =>
      Platform.isAndroid ? (15.0 + resWidth) : (17.0 + resWidth);
  double get avatarContainerVisitedText =>
      Platform.isAndroid ? (11.5 + resWidth) : (15.0 + resWidth);
  double get avatarContainerVisitedDateText =>
      Platform.isAndroid ? (9.0 + resWidth) : (10.0 + resWidth);

  double get profileTreeSectionText =>
      Platform.isAndroid ? (11.5 + resWidth) : (12.5 + resWidth);
  double get profileTreeSectionIcon =>
      Platform.isAndroid ? (15.0 + resWidth) : (17.0 + resWidth);

  double get profileResumeHeader =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get profileResumeDescription =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.0 + resWidth);

  double get profileProgressIndicatorText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get profileProgressIndicatorScale =>
      Platform.isAndroid ? (55.0 + resWidth) : (66.0 + resWidth);
  double get profileProgressIndicatorStrokeWidth =>
      Platform.isAndroid ? (2.0 + resWidth) : (5.0 + resWidth);

  double get advertDetailHeader =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get advertDetailDesc =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get advertDetailEmployerHeader =>
      Platform.isAndroid ? (13.5 + resWidth) : (15.5 + resWidth);
  double get advertDetailEmployerDesc =>
      Platform.isAndroid ? (12.5 + resWidth) : (14.5 + resWidth);
  double get advertDetailApplyText =>
      Platform.isAndroid ? (11.0 + resWidth) : (13.0 + resWidth);
  double get advertDetailEmployerButton =>
      Platform.isAndroid ? (11.0 + resWidth) : (13.0 + resWidth);
  double get advertDetailNotEligibleIcon =>
      Platform.isAndroid ? (17.0 + resWidth) : (20.0 + resWidth);
  double get advertDetailNotEligibleText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get advertDetailNotEligibleDescriptionText =>
      Platform.isAndroid ? (11.0 + resWidth) : (13.0 + resWidth);
  double get advertDetailBtnApplyText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get advertDetailBtnAppliedText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get advertDetailBtnAppliedIcon =>
      Platform.isAndroid ? (18.0 + resWidth) : (21.0 + resWidth);
  double get advertDetailBtnEligibleText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get advertDetailBtnEligibleIcon =>
      Platform.isAndroid ? (17.0 + resWidth) : (19.0 + resWidth);
  double get advertDetailFavoriteIcon =>
      Platform.isAndroid ? (25.0 + resWidth) : (28.0 + resWidth);

  double get tableComponentHeaderText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get tableItemText =>
      Platform.isAndroid ? (13.0 + resWidth) : (14.0 + resWidth);
  double get tableItemIcon =>
      Platform.isAndroid ? (15.0 + resWidth) : (17.0 + resWidth);
  double get tableItemSmallText =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.5 + resWidth);
  double get tableItemActionHeaderText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get tableItemActionDescText =>
      Platform.isAndroid ? (11.0 + resWidth) : (13.0 + resWidth);

  double get employerDetailTabText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get employerDetailFollowBtn =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);

  double get messageListHeader =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get messageListSecondText =>
      Platform.isAndroid ? (11.0 + resWidth) : (12.0 + resWidth);
  double get messageListThirdText =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.0 + resWidth);

  double get messageDetailHeaderText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get messageDetailDescText =>
      Platform.isAndroid ? (12.0 + resWidth) : (14.0 + resWidth);
  double get messageDetailDateText =>
      Platform.isAndroid ? (9.0 + resWidth) : (11.0 + resWidth);
  double get messageDetailInputText =>
      Platform.isAndroid ? (13.0 + resWidth) : (15.0 + resWidth);
  double get messageDetailInputIcon =>
      Platform.isAndroid ? (23.0 + resWidth) : (26.0 + resWidth);
  double get messageDetailVisitedIcon =>
      Platform.isAndroid ? (10.0 + resWidth) : (11.0 + resWidth);
  double get messageDetailVisitedText =>
      Platform.isAndroid ? (9.0 + resWidth) : (10.0 + resWidth);

  double get csAutoCompleteText =>
      Platform.isAndroid ? (14.0 + resWidth) : (15.0 + resWidth);
  double get csAutoCompleteIcon =>
      Platform.isAndroid ? (16.0 + resWidth) : (16.0 + resWidth);

  double get resumeCardItemHeaderText =>
      Platform.isAndroid ? (12.0 + resWidth) : (13.0 + resWidth);
  double get resumeCardItemDescText =>
      Platform.isAndroid ? (11.0 + resWidth) : (12.0 + resWidth);
  double get resumeListItemText =>
      Platform.isAndroid ? (14.0 + resWidth) : (16.0 + resWidth);
}
