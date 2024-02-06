import '../onboarding_two_screen/widgets/transacttext_item_widget.dart';
import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:ashutosh_s_application/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray90002,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnboardingOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 93.v),
                _buildSeventyFive(context),
                SizedBox(height: 13.v),
                _buildOnboardingTwoContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return SizedBox(
      height: 387.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup10241,
            height: 369.v,
            width: 331.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 144.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.gray90002.withOpacity(0),
                    appTheme.gray90002,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingTwoContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 44.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.gradientGrayToGray,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 137.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return TransacttextItemWidget();
            },
          ),
          SizedBox(height: 37.v),
          SizedBox(
            height: 12.v,
            child: AnimatedSmoothIndicator(
              activeIndex: sliderIndex,
              count: 1,
              axisDirection: Axis.horizontal,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: appTheme.gray600,
                dotColor: theme.colorScheme.onPrimaryContainer,
                dotHeight: 12.v,
                dotWidth: 12.h,
              ),
            ),
          ),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            width: 180.h,
            text: "Next",
          ),
          SizedBox(height: 67.v),
        ],
      ),
    );
  }
}
