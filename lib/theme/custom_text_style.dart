import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGreenA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.greenA200,
      );
  static get bodyMediumRed400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
}

extension on TextStyle {
  TextStyle get myriadPro {
    return copyWith(
      fontFamily: 'Myriad Pro',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get neueMontreal {
    return copyWith(
      fontFamily: 'Neue Montreal',
    );
  }
}
