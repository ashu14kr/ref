import 'package:ashutosh_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMainNavigation,
      activeIcon: ImageConstant.imgMainNavigation,
      title: "Markets",
      type: BottomBarEnum.Markets,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavTrades,
      activeIcon: ImageConstant.imgNavTrades,
      title: "Trades",
      type: BottomBarEnum.Trades,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavActivity,
      activeIcon: ImageConstant.imgNavActivity,
      title: "Activity",
      type: BottomBarEnum.Activity,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavWallets,
      activeIcon: ImageConstant.imgNavWallets,
      title: "Wallets",
      type: BottomBarEnum.Wallets,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.v,
      decoration: BoxDecoration(
        color: appTheme.gray90002,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90003.withOpacity(0.5),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 52.v,
              width: 44.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 37.v,
                        right: 2.h,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodySmallGray400.copyWith(
                          color: appTheme.gray400,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    color: appTheme.greenA200,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(bottom: 8.v),
                  ),
                ],
              ),
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: appTheme.gray600,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.gray600,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Markets,
  Trades,
  Activity,
  Wallets,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
