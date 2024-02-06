import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:ashutosh_s_application/presentation/market_tab_container_page/market_tab_container_page.dart';
import 'package:ashutosh_s_application/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MarketContainerScreen extends StatelessWidget {
  MarketContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.marketTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.marketTabContainerPage;
      case BottomBarEnum.Markets:
        return "/";
      case BottomBarEnum.Trades:
        return "/";
      case BottomBarEnum.Activity:
        return "/";
      case BottomBarEnum.Wallets:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.marketTabContainerPage:
        return MarketTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
