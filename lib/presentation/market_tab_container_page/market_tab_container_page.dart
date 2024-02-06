import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:ashutosh_s_application/presentation/market_page/market_page.dart';
import 'package:ashutosh_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:ashutosh_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ashutosh_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MarketTabContainerPage extends StatefulWidget {
  const MarketTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  MarketTabContainerPageState createState() => MarketTabContainerPageState();
}

class MarketTabContainerPageState extends State<MarketTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 668.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      MarketPage(),
                      MarketPage(),
                      MarketPage(),
                      MarketPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector6x6,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 41.v,
          bottom: 18.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTopMidIcons,
          margin: EdgeInsets.only(
            left: 14.h,
            top: 37.v,
            right: 14.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettingsGreenA200,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 37.v,
            right: 14.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDownload,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 37.v,
            right: 28.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: 366.h,
      decoration: BoxDecoration(
        color: appTheme.gray90003,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray400,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray90002,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Convert",
            ),
          ),
          Tab(
            child: Text(
              "Spot",
            ),
          ),
          Tab(
            child: Text(
              "Margin",
            ),
          ),
          Tab(
            child: Text(
              "Fiat",
            ),
          ),
        ],
      ),
    );
  }
}
