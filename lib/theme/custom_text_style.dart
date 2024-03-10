import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/utils/size_utils.dart';
import 'package:engelsiz_spor/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeManropeBlack90001 =>
      theme.textTheme.bodyLarge!.manrope.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumComfortaa =>
      theme.textTheme.bodyMedium!.comfortaa.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumComfortaaGray60002 =>
      theme.textTheme.bodyMedium!.comfortaa.copyWith(
        color: appTheme.gray60002,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumInter13 => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumInter15 => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumInterBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001.withOpacity(0.39),
      );
  static get bodyMediumInterBlack90001_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001.withOpacity(0.5),
      );
  static get bodyMediumInterBluegray800 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray800,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterGray60001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumInterWhiteA70002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA70002,
      );
  static get bodyMediumInter_1 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumLato => theme.textTheme.bodyMedium!.lato;
  static get bodyMediumManrope => theme.textTheme.bodyMedium!.manrope.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLato => theme.textTheme.bodySmall!.lato.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLatoGray60003 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray60003,
        fontSize: 11.fSize,
      );
  static get bodySmallRobotoGray90001 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray90001,
        fontSize: 10.fSize,
      );
  // Title text style
  static get titleLargeComfortaa =>
      theme.textTheme.titleLarge!.comfortaa.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterOnPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterOnPrimaryBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoWhiteA70002 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoGray5003 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray5003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallWhiteA70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get comfortaa {
    return copyWith(
      fontFamily: 'Comfortaa',
    );
  }
}
