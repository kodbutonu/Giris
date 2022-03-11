import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  double get textScale => mediaQuery.textScaleFactor;
  double dynamicWidth(double val) => mediaQuery.size.width * val;
  double dynamicHeight(double val) => mediaQuery.size.height * val;
  double get dynamicwidthValue => mediaQuery.size.width;
  double get dynamicheightValue => mediaQuery.size.height;
}

extension NumberExtension on BuildContext {
  double get valueW100 => dynamicHeight(0.005);
  double get valueW200 => dynamicHeight(0.01);
  double get valueW300 => dynamicHeight(0.015);
  double get valueW400 => dynamicHeight(0.02);
  double get valueW500 => dynamicHeight(0.025);
  double get valueW600 => dynamicHeight(0.030);
  double get valueW700 => dynamicHeight(0.035);
  double get valueW800 => dynamicHeight(0.04);
  double get valueW900 => dynamicHeight(0.045);
  double get valueW1k => dynamicHeight(0.050);
  double setValue(double value) => (mediaQuery.size.height * value);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingAllvalueW100 => EdgeInsets.all(valueW100);
  EdgeInsets get paddingAllvalueW200 => EdgeInsets.all(valueW200);
  EdgeInsets get paddingAllvalueW300 => EdgeInsets.all(valueW300);
  EdgeInsets get paddingAllvalueW400 => EdgeInsets.all(valueW400);
  EdgeInsets get paddingAllvalueW500 => EdgeInsets.all(valueW500);
  EdgeInsets get paddingAllvalueW600 => EdgeInsets.all(valueW600);
  EdgeInsets get paddingAllvalueW700 => EdgeInsets.all(valueW700);
  EdgeInsets get paddingAllvalueW800 => EdgeInsets.all(valueW800);
  EdgeInsets get paddingAllvalueW900 => EdgeInsets.all(valueW900);
  EdgeInsets get paddingAllvalueW1k => EdgeInsets.all(valueW1k);
  EdgeInsets paddingAllsetValue(double value) =>
      EdgeInsets.all(mediaQuery.size.height * value);

  //Symetric Horizontal

  EdgeInsets get paddingsymetricHorizontalvalueW100 =>
      EdgeInsets.symmetric(horizontal: valueW100);
  EdgeInsets get paddingsymetricHorizontalvalueW200 =>
      EdgeInsets.symmetric(horizontal: valueW200);
  EdgeInsets get paddingsymetricHorizontalvalueW300 =>
      EdgeInsets.symmetric(horizontal: valueW300);
  EdgeInsets get paddingsymetricHorizontalvalueW400 =>
      EdgeInsets.symmetric(horizontal: valueW400);
  EdgeInsets get paddingsymetricHorizontalvalueW500 =>
      EdgeInsets.symmetric(horizontal: valueW500);
  EdgeInsets get paddingsymetricHorizontalvalueW600 =>
      EdgeInsets.symmetric(horizontal: valueW600);
  EdgeInsets get paddingsymetricHorizontalvalueW700 =>
      EdgeInsets.symmetric(horizontal: valueW700);
  EdgeInsets get paddingsymetricHorizontalvalueW800 =>
      EdgeInsets.symmetric(horizontal: valueW800);
  EdgeInsets get paddingsymetricHorizontalvalueW900 =>
      EdgeInsets.symmetric(horizontal: valueW900);
  EdgeInsets get paddingsymetricHorizontalvalueW1k =>
      EdgeInsets.symmetric(horizontal: valueW1k);
  EdgeInsets paddingsymetricHorizontalsetValue(double value) =>
      EdgeInsets.symmetric(horizontal: mediaQuery.size.height * value);

  //Symetric vertical

  EdgeInsets get paddingsymetricVerticalvalueW100 =>
      EdgeInsets.symmetric(vertical: valueW100);
  EdgeInsets get paddingsymetricVerticalvalueW200 =>
      EdgeInsets.symmetric(vertical: valueW200);
  EdgeInsets get paddingsymetricVerticalvalueW300 =>
      EdgeInsets.symmetric(vertical: valueW300);
  EdgeInsets get paddingsymetricVerticalvalueW400 =>
      EdgeInsets.symmetric(vertical: valueW400);
  EdgeInsets get paddingsymetricVerticalvalueW500 =>
      EdgeInsets.symmetric(vertical: valueW500);
  EdgeInsets get paddingsymetricVerticalvalueW600 =>
      EdgeInsets.symmetric(vertical: valueW600);
  EdgeInsets get paddingsymetricVerticalvalueW700 =>
      EdgeInsets.symmetric(vertical: valueW700);
  EdgeInsets get paddingsymetricVerticalvalueW800 =>
      EdgeInsets.symmetric(vertical: valueW800);
  EdgeInsets get paddingsymetricVerticalvalueW900 =>
      EdgeInsets.symmetric(vertical: valueW900);
  EdgeInsets get paddingsymetricVerticalvalueW1k =>
      EdgeInsets.symmetric(vertical: valueW1k);
  EdgeInsets paddingsymetricVerticalsetValue(double value) =>
      EdgeInsets.symmetric(vertical: mediaQuery.size.height * value);

  //Only

  EdgeInsets paddingOnlysetValue(
          double left, double top, double right, double bottom) =>
      EdgeInsets.only(
        left: dynamicwidthValue * left,
        top: dynamicheightValue * top,
        right: dynamicwidthValue * right,
        bottom: dynamicheightValue * bottom,
      );
}

extension ScaleExtension on BuildContext {
  double setScale(double value) =>
      (dynamicheightValue + dynamicwidthValue) * value;
}

extension PositionExtension on BuildContext {
  double setPositionXaxis(double value) => dynamicwidthValue * value;
  double setPositionYaxis(double value) => dynamicheightValue * value;
}
