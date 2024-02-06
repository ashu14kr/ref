import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StockmarketdataItemWidget extends StatelessWidget {
  const StockmarketdataItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(
                "32,697.05",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "+0.81%",
              style: CustomTextStyles.bodyMediumGreenA200,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(left: 299.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "32,697.05",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "+0.81%",
                      style: CustomTextStyles.bodyMediumGreenA200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 62.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseYellow900,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bitcoin",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "BTC",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgComponent23,
                    height: 31.v,
                    width: 142.h,
                    margin: EdgeInsets.only(top: 7.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
