import 'package:easy_localization/easy_localization.dart';

import '../constants/app/app_constants.dart';

extension StringLocalization on String {
  String get locale => this.tr();

  bool? get isValidEmail =>
      contains(RegExp(ApplicationConstants.EMAIL_REGIEX)) ? true : false;

  bool get isValidEmails =>
      RegExp(ApplicationConstants.EMAIL_REGIEX).hasMatch(this);

  bool get isNullOrEmpty => this == null || this == '';

  // bool get isNullOrEmpty {
  //   bool _hasSpace = RegExp(r'\s').hasMatch(this);
  //   //  bool _hasSpace = this.contains(' ');
//
  //   return this == null || isEmpty || _hasSpace;
  // }
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
}

extension PhoneConvert on String {
  String get phoneConvert => phoneFormat(this);
}

extension SelectTagItems on String {
  String get selectTagItem => this == 0 ? this : '';
}

String phoneFormat(String phone) {
  // return '0505 325 25 35';
  String formattedPhoneNumber = "0" +
      phone.substring(0, 3) +
      " " +
      phone.substring(3, 6) +
      " " +
      phone.substring(6, 8) +
      " " +
      phone.substring(8, phone.length);
  return formattedPhoneNumber;
}
