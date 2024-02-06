import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TradetextItemWidget extends StatelessWidget {
  const TradetextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Trade anytime anywhere",
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 24.v),
        SizedBox(
          width: 324.h,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge!.copyWith(
              height: 1.56,
            ),
          ),
        ),
      ],
    );
  }
}
