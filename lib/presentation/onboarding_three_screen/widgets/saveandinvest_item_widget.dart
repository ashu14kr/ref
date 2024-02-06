import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SaveandinvestItemWidget extends StatelessWidget {
  const SaveandinvestItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Save and invest at the same time",
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 26.v),
        Container(
          width: 324.h,
          margin: EdgeInsets.only(
            left: 13.h,
            right: 12.h,
          ),
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
