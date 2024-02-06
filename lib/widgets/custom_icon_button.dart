import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blue700,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 1),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.gray900,
            appTheme.blueGray900,
          ],
        ),
      );
}
