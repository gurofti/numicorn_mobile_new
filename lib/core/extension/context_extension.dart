import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get deviceResWidth =>
      mediaQuery.size.width > 576 ? mediaQuery.size.width * 0.2 : 0;
  double get width => mediaQuery.size.width - deviceResWidth;
  double get lowValue => 5 + (height * 0.003);
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;
}

extension FormInput on BuildContext {
  double get lowFormInput => height * 0.07;
  double get normalFormInput => height * 0.095;
  double get mediumFormInput => height * 0.105;
  double get highFormInput => height * 0.115;
}

extension CustomDevice on BuildContext {
  double get pageIfBigSmallPadding => width > 576 ? (80 + (width * 0.005)) : 0;
  double get pageIfBigSmallSearchHeaderPadding =>
      width > 576 ? (8 + (width * 0.005)) : 5;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue); // 7.8
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue); // 15.6
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue); // 31.2
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension NavigationBottom on BuildContext {
  EdgeInsets get navigationBottomPadding => Platform.isAndroid
      ? EdgeInsets.zero
      : const EdgeInsets.only(bottom: 10.0, top: 0);
  double get positionedBottomButton => Platform.isAndroid ? 0 : 25;
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal =>
      EdgeInsets.symmetric(horizontal: highValue);
}

extension PageExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}

extension DurationExtension on BuildContext {
  Duration get lowDuration => Duration(milliseconds: 500);
  Duration get normalDuration => Duration(seconds: 1);
}