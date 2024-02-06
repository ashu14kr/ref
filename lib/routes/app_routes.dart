import 'package:flutter/material.dart';
import 'package:ashutosh_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:ashutosh_s_application/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:ashutosh_s_application/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:ashutosh_s_application/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:ashutosh_s_application/presentation/market_container_screen/market_container_screen.dart';
import 'package:ashutosh_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String marketPage = '/market_page';

  static const String marketTabContainerPage = '/market_tab_container_page';

  static const String marketContainerScreen = '/market_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    marketContainerScreen: (context) => MarketContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
