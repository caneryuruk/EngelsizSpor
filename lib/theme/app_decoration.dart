import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.2),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray5001,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.black90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration();
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA70002,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.blueGray5001,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.56),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.62),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA70002,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder100 => BorderRadius.circular(
        100.h,
      );
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder51 => BorderRadius.circular(
        51.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL40 => BorderRadius.vertical(
        bottom: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder73 => BorderRadius.circular(
        73.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
