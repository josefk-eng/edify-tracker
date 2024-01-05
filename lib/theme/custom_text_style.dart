import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryBold => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleSmallGray5001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray5002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLightblue900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue900,
      );
  static get titleSmallLightblue900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );

  static get titleSmallOnPrimaryContainerBold1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
