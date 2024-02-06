import '../onboarding_three_screen/widgets/saveandinvest_item_widget.dart';
import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:ashutosh_s_application/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  OnboardingThreeScreen({Key? key})
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
                _buildEditSection(context),
                SizedBox(height: 13.v),
                _buildContentSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditSection(BuildContext context) {
    return SizedBox(
      height: 387.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 369.v,
              width: 331.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 259.v,
                      width: 186.h,
                      margin: EdgeInsets.only(right: 30.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(right: 32.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 23.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup4,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 19.v),
                                  Opacity(
                                    opacity: 0.65,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgEdit,
                                      height: 21.v,
                                      width: 12.h,
                                      margin: EdgeInsets.only(left: 23.h),
                                    ),
                                  ),
                                  SizedBox(height: 38.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 65.v,
                                      width: 81.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Opacity(
                                            opacity: 0.4,
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTelevision,
                                              height: 64.v,
                                              width: 81.h,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.65,
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAirplane,
                                              height: 9.v,
                                              width: 53.h,
                                              alignment: Alignment.topRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 78.v,
                              width: 60.h,
                              margin: EdgeInsets.only(right: 43.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 23.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup57,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      height: 12.v,
                                      width: 4.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorDeepOrange200,
                                            height: 12.v,
                                            width: 4.h,
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVectorRed30001,
                                            height: 4.v,
                                            width: 2.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(top: 2.v),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector12x3,
                                    height: 12.v,
                                    width: 3.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                      left: 1.h,
                                      bottom: 7.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 15.v,
                              width: 67.h,
                              margin: EdgeInsets.only(
                                top: 67.v,
                                right: 37.h,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Opacity(
                                    opacity: 0.65,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowUp,
                                      height: 15.v,
                                      width: 67.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorOnerror1x1,
                                    height: 1.adaptSize,
                                    width: 1.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 3.v,
                                      right: 6.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 20.v,
                            width: 59.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 60.v,
                              right: 44.h,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 13.v,
                              width: 60.h,
                              margin: EdgeInsets.only(
                                top: 58.v,
                                right: 44.h,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVectorOnerror,
                                    height: 13.v,
                                    width: 60.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorWhiteA7001x1,
                                    height: 1.adaptSize,
                                    width: 1.adaptSize,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 14.v,
                              width: 44.h,
                              margin: EdgeInsets.only(
                                top: 65.v,
                                right: 51.h,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector14x44,
                                    height: 14.v,
                                    width: 44.h,
                                    alignment: Alignment.center,
                                  ),
                                  Opacity(
                                    opacity: 0.4,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgSettings,
                                      height: 12.v,
                                      width: 44.h,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 41.v,
                              width: 40.h,
                              margin: EdgeInsets.only(
                                top: 29.v,
                                right: 53.h,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 41.v,
                                    width: 40.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.h,
                                        bottom: 2.v,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSettingsRed30001,
                                            height: 13.v,
                                            width: 30.h,
                                          ),
                                          SizedBox(height: 1.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 1.v,
                                                      bottom: 10.v,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlack900,
                                                                height: 3.v,
                                                                width: 2.h,
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVector1x1,
                                                                height:
                                                                    1.adaptSize,
                                                                width:
                                                                    1.adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            2.v),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 1.v),
                                                        Opacity(
                                                          opacity: 0.32,
                                                          child:
                                                              CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorRed300,
                                                            height: 1.v,
                                                            width: 4.h,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorRed3000114x2,
                                                    height: 14.v,
                                                    width: 2.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 5.v),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorBlack900,
                                                          height: 3.v,
                                                          width: 2.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 3.h),
                                                        ),
                                                        SizedBox(height: 2.v),
                                                        Opacity(
                                                          opacity: 0.32,
                                                          child:
                                                              CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorRed300,
                                                            height: 2.v,
                                                            width: 5.h,
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ),
                                                        SizedBox(height: 3.v),
                                                        SizedBox(
                                                          height: 7.adaptSize,
                                                          width: 7.adaptSize,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUserRed900,
                                                                height:
                                                                    7.adaptSize,
                                                                width:
                                                                    7.adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorRed3005x4,
                                                                height: 5.v,
                                                                width: 4.h,
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorRed3000112x3,
                                                    height: 12.v,
                                                    width: 3.h,
                                                    margin: EdgeInsets.only(
                                                        top: 7.v),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 37.v,
                              width: 47.h,
                              margin: EdgeInsets.only(
                                top: 10.v,
                                right: 52.h,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector37x47,
                                    height: 37.v,
                                    width: 47.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector5x5,
                                            height: 5.adaptSize,
                                            width: 5.adaptSize,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector3x8,
                                            height: 3.v,
                                            width: 8.h,
                                            margin: EdgeInsets.only(
                                              left: 9.h,
                                              bottom: 2.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorRed300015x5,
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 47.v,
                              right: 56.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray90002,
                            height: 76.v,
                            width: 10.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 81.v,
                              right: 82.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorOnerror18x45,
                            height: 18.v,
                            width: 45.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 39.h,
                              bottom: 97.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 81.v,
                              width: 61.h,
                              margin: EdgeInsets.only(
                                top: 82.v,
                                right: 33.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.h,
                                vertical: 18.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup7,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSave,
                                height: 26.v,
                                width: 18.h,
                                alignment: Alignment.topRight,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 29.v,
                              width: 79.h,
                              margin: EdgeInsets.only(
                                right: 42.h,
                                bottom: 81.v,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector29x79,
                                    height: 29.v,
                                    width: 79.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 5.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlay,
                                            height: 11.adaptSize,
                                            width: 11.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 6.v),
                                          ),
                                          Container(
                                            height: 17.v,
                                            width: 29.h,
                                            margin: EdgeInsets.only(left: 5.h),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorBlueGray100,
                                                  height: 5.v,
                                                  width: 29.h,
                                                  alignment:
                                                      Alignment.topCenter,
                                                  margin:
                                                      EdgeInsets.only(top: 5.v),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUserBlueGray600,
                                                  height: 17.v,
                                                  width: 6.h,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray600,
                            height: 19.v,
                            width: 6.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 51.h,
                              bottom: 80.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 42.v,
                              width: 46.h,
                              margin: EdgeInsets.only(
                                left: 65.h,
                                bottom: 77.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector42x46,
                                    height: 42.v,
                                    width: 46.h,
                                    alignment: Alignment.center,
                                  ),
                                  Opacity(
                                    opacity: 0.65,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgUserOnerror,
                                      height: 11.v,
                                      width: 14.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 9.v,
                                        right: 2.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSaveBlueGray10001,
                            height: 21.v,
                            width: 32.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 64.h,
                              bottom: 99.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(
                                right: 76.h,
                                bottom: 99.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgTelevisionDeepOrange200,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorRed3000111x5,
                                    height: 11.v,
                                    width: 5.h,
                                    alignment: Alignment.topRight,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGreen30001,
                            height: 88.v,
                            width: 78.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 70.v,
                              right: 2.h,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 88.v,
                              width: 65.h,
                              margin: EdgeInsets.only(
                                top: 70.v,
                                right: 7.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.h,
                                vertical: 1.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup6,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMobile,
                                height: 25.v,
                                width: 18.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMobile,
                            height: 11.v,
                            width: 38.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 109.v),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSaveOnerror,
                              height: 8.v,
                              width: 37.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 112.v),
                            ),
                          ),
                          Opacity(
                            opacity: 0.65,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 53.v,
                              width: 24.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 51.h,
                                top: 89.v,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 13.v,
                              width: 37.h,
                              margin: EdgeInsets.only(top: 114.v),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsWhiteA700,
                                    height: 13.v,
                                    width: 37.h,
                                    alignment: Alignment.center,
                                  ),
                                  Opacity(
                                    opacity: 0.4,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSettingsOnerror,
                                      height: 10.v,
                                      width: 35.h,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgBookmark,
                              height: 20.v,
                              width: 15.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 45.h,
                                bottom: 106.v,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMobileWhiteA700,
                            height: 13.v,
                            width: 60.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 68.v,
                              right: 43.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsBlueGray100,
                            height: 13.v,
                            width: 35.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 118.v,
                              right: 2.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkBlueGray90003,
                            height: 18.v,
                            width: 24.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 50.h,
                              bottom: 110.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 19.v,
                              width: 13.h,
                              margin: EdgeInsets.only(left: 40.h),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgContrast,
                                    height: 19.v,
                                    width: 13.h,
                                    alignment: Alignment.center,
                                  ),
                                  Opacity(
                                    opacity: 0.4,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserOnerror8x7,
                                      height: 8.v,
                                      width: 7.h,
                                      alignment: Alignment.bottomRight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserDeepOrange200,
                            height: 22.v,
                            width: 18.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 43.h,
                              top: 114.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 17.v,
                              width: 24.h,
                              margin: EdgeInsets.only(
                                right: 51.h,
                                bottom: 111.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEditRed300,
                                    height: 17.v,
                                    width: 24.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 2.h,
                                        top: 1.v,
                                        right: 1.h,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgCheckmarkWhiteA700,
                                            height: 6.v,
                                            width: 9.h,
                                            alignment: Alignment.centerRight,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOrange300,
                                            height: 5.v,
                                            width: 8.h,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector1x1,
                                            height: 1.adaptSize,
                                            width: 1.adaptSize,
                                            margin: EdgeInsets.only(left: 1.h),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserRed30001,
                            height: 10.v,
                            width: 15.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 46.h),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 18.v,
                              width: 20.h,
                              margin: EdgeInsets.only(
                                left: 50.h,
                                top: 108.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector18x20,
                                    height: 18.v,
                                    width: 20.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      margin: EdgeInsets.only(
                                        top: 4.v,
                                        right: 5.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector3x8,
                                            height: 8.v,
                                            width: 6.h,
                                            alignment: Alignment.topLeft,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector3x8,
                                            height: 7.v,
                                            width: 4.h,
                                            alignment: Alignment.bottomRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray1004x20,
                            height: 4.v,
                            width: 20.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 50.h,
                              top: 106.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector42x31,
                            height: 42.v,
                            width: 31.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 39.h,
                              top: 66.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900022x19,
                            height: 2.v,
                            width: 19.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 50.h,
                              top: 107.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorWhiteA700,
                            height: 14.v,
                            width: 6.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 53.h,
                              bottom: 111.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 53.h),
                              child: SizedBox(
                                height: 126.v,
                                child: VerticalDivider(
                                  width: 5.h,
                                  thickness: 5.v,
                                  endIndent: 109.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserBlueGray100,
                            height: 15.v,
                            width: 19.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 78.h,
                              top: 91.v,
                            ),
                          ),
                          Opacity(
                            opacity: 0.65,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserOnerror19x24,
                              height: 19.v,
                              width: 24.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 92.v,
                                right: 50.h,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 19.v,
                              width: 24.h,
                              margin: EdgeInsets.only(
                                top: 94.v,
                                right: 53.h,
                              ),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUserBlueGray10019x24,
                                    height: 19.v,
                                    width: 24.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                            margin: EdgeInsets.only(top: 1.v),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVector6x6,
                                                  height: 6.adaptSize,
                                                  width: 6.adaptSize,
                                                  alignment: Alignment.topRight,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClose,
                                                  height: 6.adaptSize,
                                                  width: 6.adaptSize,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 2.adaptSize,
                                            width: 2.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 2.h,
                                              bottom: 6.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.orange300,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimary,
                                            height: 2.adaptSize,
                                            width: 2.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 3.h,
                                              bottom: 5.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 95.v),
                              child: Text(
                                "LO",
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 76.v,
                              width: 99.h,
                              margin: EdgeInsets.only(
                                left: 29.h,
                                bottom: 4.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 12.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup64,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgArrowUpOnerror,
                                    height: 19.v,
                                    width: 32.h,
                                    alignment: Alignment.topRight,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      height: 28.v,
                                      width: 31.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionBlueGray100,
                                            height: 28.v,
                                            width: 31.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              height: 23.v,
                                              width: 26.h,
                                              margin: EdgeInsets.only(
                                                top: 2.v,
                                                right: 1.h,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorWhiteA70022x25,
                                                    height: 22.v,
                                                    width: 25.h,
                                                    alignment:
                                                        Alignment.topRight,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVector1x1,
                                                    height: 1.adaptSize,
                                                    width: 1.adaptSize,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        bottom: 4.v),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorRed3001x1,
                                                    height: 1.adaptSize,
                                                    width: 1.adaptSize,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 4.h),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.65,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVectorOnerror51x78,
                              height: 51.v,
                              width: 78.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 3.h,
                                bottom: 27.v,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 58.v,
                              width: 31.h,
                              margin: EdgeInsets.only(
                                top: 4.v,
                                right: 49.h,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Opacity(
                                    opacity: 0.43,
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgSettingsWhiteA70058x31,
                                      height: 58.v,
                                      width: 31.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 1.adaptSize,
                                      width: 1.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 8.h,
                                        bottom: 11.v,
                                      ),
                                      decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 91.v,
                              width: 73.h,
                              margin: EdgeInsets.only(
                                top: 69.v,
                                right: 2.h,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 29.v),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup5,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Opacity(
                                opacity: 0.4,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsOnerror12x34,
                                  height: 12.v,
                                  width: 34.h,
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSettingsOnerror61x8,
                              height: 61.v,
                              width: 8.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 68.h,
                                top: 89.v,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRefresh,
                            height: 16.v,
                            width: 21.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 95.v,
                              right: 54.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUfo,
                    height: 259.v,
                    width: 221.h,
                    alignment: Alignment.bottomLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgElements,
                    height: 214.v,
                    width: 320.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 19.v),
                  ),
                ],
              ),
            ),
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
  Widget _buildContentSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.gradientGrayToGray,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 139.v,
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
              return SaveandinvestItemWidget();
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
          SizedBox(height: 69.v),
        ],
      ),
    );
  }
}
