import '../market_page/widgets/stockmarketdata_item_widget.dart';
import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:ashutosh_s_application/widgets/custom_outlined_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MarketPage extends StatefulWidget {
  const MarketPage({Key? key})
      : super(
          key: key,
        );

  @override
  MarketPageState createState() => MarketPageState();
}

class MarketPageState extends State<MarketPage>
    with AutomaticKeepAliveClientMixin<MarketPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildStockMarketData(context),
                      SizedBox(height: 21.v),
                      DottedBorder(
                        color: theme.colorScheme.primary.withOpacity(0.5),
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 2.v,
                          right: 2.h,
                          bottom: 2.v,
                        ),
                        strokeWidth: 2.h,
                        radius: Radius.circular(12),
                        borderType: BorderType.RRect,
                        dashPattern: [
                          4,
                          5,
                        ],
                        child: CustomOutlinedButton(
                          text: "Add Favorite",
                          leftIcon: Container(
                            margin: EdgeInsets.only(),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCloseGray600,
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStockMarketData(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Opacity(
          opacity: 0.02,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 9.5.v),
            child: SizedBox(
              width: 366.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.whiteA700.withOpacity(0.36),
              ),
            ),
          ),
        );
      },
      itemCount: 7,
      itemBuilder: (context, index) {
        return StockmarketdataItemWidget();
      },
    );
  }
}
