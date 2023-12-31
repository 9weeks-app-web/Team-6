// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Common {
  static String anonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdyeXZ3emtyb3ZhanF2c3dndnNkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM1NzI3NDcsImV4cCI6MjAxOTE0ODc0N30.bd9Dr8vJgTjkEBlaZVKGyCgK2-6MQOSwpmAFtyLLoOA';
  static String url = 'https://gryvwzkrovajqvswgvsd.supabase.co';
}

enum DesignStyle {
  HeadLine_Bold,
  HeadLine_SemiBold,
  Title_Bold,
  Title_SemiBold,
  Title,
  SubTitle_Bold,
  SubTitle_SemiBold,
  SubTitle,
  Body_Bold,
  Body_SemiBold,
  Body,
  Label_1_SemiBold,
  Label_2_SemiBold,
  Label_3_SemiBold,
  Label_3_Bold,
  Caption_1_Medium,
  Caption_1,
  // 나머지 스타일도 이와 같이 추가...
}

class DesignTextStyle {
  // Font Sizes
  static const double _headLineSize = 24.0;
  static const double _titleSize = 22.0;
  static const double _subTitleSize = 18.0;
  static const double _bodySize = 16.0;
  static const double _labelSize1 = 16.0;
  static const double _labelSize2 = 14.0;
  static const double _labelSize3 = 12.0;
  static const double _captionSize = 12.0;

  // Font Weights
  static const FontWeight _bold = FontWeight.w700;
  static const FontWeight _semiBold = FontWeight.w600;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _regular = FontWeight.w400;

  //HeadLine Style
  static TextStyle? get HeadLine_Bold =>
      const TextStyle(fontSize: _headLineSize, fontWeight: _bold);
  static TextStyle? get HeadLine_SemiBold =>
      const TextStyle(fontSize: _headLineSize, fontWeight: _semiBold);
  //Title Style
  static TextStyle? get Title_Bold =>
      const TextStyle(fontSize: _titleSize, fontWeight: _bold);
  static TextStyle? get Title_SemiBold =>
      const TextStyle(fontSize: _titleSize, fontWeight: _semiBold);
  static TextStyle? get Title =>
      const TextStyle(fontSize: _titleSize, fontWeight: _regular);
  //SubTitle Style
  static TextStyle? get SubTitle_Bold =>
      const TextStyle(fontSize: _subTitleSize, fontWeight: _bold);
  static TextStyle? get SubTitle_SemiBold =>
      const TextStyle(fontSize: _subTitleSize, fontWeight: _semiBold);
  static TextStyle? get SubTitle =>
      const TextStyle(fontSize: _subTitleSize, fontWeight: _regular);
  //Body Style
  static TextStyle? get Body_Bold =>
      const TextStyle(fontSize: _bodySize, fontWeight: _bold);
  static TextStyle? get Body_SemiBold =>
      const TextStyle(fontSize: _bodySize, fontWeight: _semiBold);
  static TextStyle? get Body =>
      const TextStyle(fontSize: _bodySize, fontWeight: _regular);
  //Label Style
  static TextStyle? get Label_1_SemiBold =>
      const TextStyle(fontSize: _labelSize1, fontWeight: _semiBold);
  static TextStyle? get Label_2_SemiBold =>
      const TextStyle(fontSize: _labelSize2, fontWeight: _semiBold);
  static TextStyle? get Label_2_regular =>
      const TextStyle(fontSize: _labelSize2, fontWeight: _regular);
  static TextStyle? get Label_3_SemiBold =>
      const TextStyle(fontSize: _labelSize3, fontWeight: _semiBold);
  static TextStyle? get Label_3_Bold =>
      const TextStyle(fontSize: _labelSize3, fontWeight: _bold);
  //Caption Style
  static TextStyle? get Caption_1_Medium =>
      const TextStyle(fontSize: _captionSize, fontWeight: _medium);
  static TextStyle? get Caption_1 =>
      const TextStyle(fontSize: _captionSize, fontWeight: _regular);

  final TextStyle style;
  final Color color;

  DesignTextStyle({DesignStyle? style, this.color = Colors.black})
      : style = _getStyle(style ?? DesignStyle.Body);

  static TextStyle _getStyle(DesignStyle style) {
    switch (style) {
      case DesignStyle.HeadLine_Bold:
        return HeadLine_Bold!;
      case DesignStyle.HeadLine_SemiBold:
        return HeadLine_SemiBold!;
      case DesignStyle.Title_Bold:
        return Title_Bold!;
      case DesignStyle.Title_SemiBold:
        return Title_SemiBold!;
      case DesignStyle.Title:
        return Title!;
      case DesignStyle.SubTitle_Bold:
        return SubTitle_Bold!;
      case DesignStyle.SubTitle_SemiBold:
        return SubTitle_SemiBold!;
      case DesignStyle.SubTitle:
        return SubTitle!;
      case DesignStyle.Body_Bold:
        return Body_Bold!;
      case DesignStyle.Body_SemiBold:
        return Body_SemiBold!;
      case DesignStyle.Body:
        return Body!;
      case DesignStyle.Label_1_SemiBold:
        return Label_1_SemiBold!;
      case DesignStyle.Label_2_SemiBold:
        return Label_2_SemiBold!;
      case DesignStyle.Label_3_SemiBold:
        return Label_3_SemiBold!;
      case DesignStyle.Label_3_Bold:
        return Label_3_Bold!;
      case DesignStyle.Caption_1_Medium:
        return Caption_1_Medium!;
      case DesignStyle.Caption_1:
        return Caption_1!;
      default:
        return Body!;
    }
  }

  TextStyle get textStyle => style.copyWith(color: color);
}

class DesignColor {
  static const int _neutralPrimaryValue = 0xFF030303;
  static const int _primaryPrimaryValue = 0xFF0059FF;
  static const int _systemPrimaryValue = 0xFF0059FF;

  static const DesignMaterialColor Neutral = DesignMaterialColor(
    _neutralPrimaryValue,
    <int, Color>{
      5: Color(0xFFF3F3F3),
      10: Color(0xFFE6E6E6),
      20: Color(0xFFCCCCCC),
      30: Color(0xFFB3B3B3),
      40: Color(0xFF999999),
      50: Color(0xFF808080),
      60: Color(0xFF808080),
      70: Color(0xFF4D4D4D),
      80: Color(0xFF333333),
      90: Color(0xFF333333),
      100: Color(_neutralPrimaryValue),
    },
  );

  static const DesignMaterialColor Primary = DesignMaterialColor(
    _primaryPrimaryValue,
    <int, Color>{
      5: Color(0xFFF5F8FF),
      10: Color(0xFFE5EEFF),
      20: Color(0xFFCCDEFF),
      30: Color(0xFFB2CDFF),
      40: Color(0xFF99BDFF),
      50: Color(0xFF669BFF),
      60: Color(0xFF7FACFF),
      70: Color(0xFF4C8BFF),
      80: Color(0xFF337AFF),
      90: Color(0xFF196AFF),
      100: Color(_primaryPrimaryValue),
    },
  );

  static const Color StrokeBlue = Color(0xFF99BDFF);
  static const Color StrokeGrey10 = Color(0xFFE6E6E6);
  static const Color StrokeGrey5 = Color(0xFFF3F3F3);

  static const DesignSystemColor System = DesignSystemColor(
    _systemPrimaryValue,
    <String, Color>{
      'warning': Color(0xFFFF0000),
      'success': Color(0xFF07A320),
    },
  );
}

class DesignMaterialColor extends ColorSwatch<int> {
  /// Creates a color swatch with a variety of shades.
  ///
  /// The `primary` argument should be the 32 bit ARGB value of one of the
  /// values in the swatch, as would be passed to the [Color.new] constructor
  /// for that same color, and as is exposed by [value]. (This is distinct from
  /// the specific index of the color in the swatch.)
  const DesignMaterialColor(super.primary, super.swatch);

  /// The lightest shade.
  Color get shade5 => this[5]!;

  /// The second lightest shade.
  Color get shade10 => this[10]!;

  /// The third lightest shade.
  Color get shade20 => this[20]!;

  /// The fourth lightest shade.
  Color get shade30 => this[30]!;

  /// The fifth lightest shade.
  Color get shade40 => this[40]!;

  /// The default shade.
  Color get shade50 => this[50]!;

  /// The fourth darkest shade.
  Color get shade60 => this[60]!;

  /// The third darkest shade.
  Color get shade70 => this[70]!;

  /// The second darkest shade.
  Color get shade80 => this[80]!;

  /// The darkest shade.
  Color get shade90 => this[90]!;
}

class DesignSystemColor extends ColorSwatch<String> {
  const DesignSystemColor(super.primary, super.swatch);

  Color get warning => this['warning']!;
  Color get success => this['success']!;

  // Private constructor
  // DesignSystemColor._() {
  //   warning = const Color(0xFFFF0000); // Or any color you want for warning
  //   success = const Color(0xFF07A320); // Or any color you want for success
  // }
}
