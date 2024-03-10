import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_title.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/puan_sayfas_controller.dart';

class PuanSayfasScreen extends GetWidget<PuanSayfasController> {
  const PuanSayfasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 41.v),
                  _buildTwentyFour(),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 50.h, right: 54.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgWhatsappImage20240309,
                                height: 100.adaptSize,
                                width: 100.adaptSize),
                            CustomImageView(
                                imagePath: ImageConstant
                                    .imgWhatsappImage2024030956x100,
                                height: 56.v,
                                width: 100.h,
                                margin:
                                    EdgeInsets.only(top: 27.v, bottom: 16.v))
                          ])),
                  _buildWidget()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 89.v,
        centerTitle: true,
        title: AppbarTitle(text: "lbl_hediyeler".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockBlack90001,
              margin: EdgeInsets.symmetric(horizontal: 21.h),
              onTap: () {
                onTapLock();
              })
        ]);
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return Container(
        width: 352.h,
        margin: EdgeInsets.only(left: 23.h, right: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 26.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Container(
                  width: 255.h,
                  margin: EdgeInsets.only(left: 22.h, right: 8.h),
                  child: Text("msg_1_hafta_ders_verip".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleLargeInter)),
              SizedBox(height: 56.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 264.h,
                      margin: EdgeInsets.only(left: 22.h),
                      child: Text("msg_her_ara_vermedi_in".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeInter))),
              SizedBox(height: 44.v),
              Container(
                  width: 227.h,
                  margin: EdgeInsets.only(left: 27.h, right: 31.h),
                  child: Text("msg_puanlar_nla_a_a_daki".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleLargeInter))
            ]));
  }

  /// Section Widget
  Widget _buildWidget() {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 200.v,
            width: 372.h,
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage20240309200x200,
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                  radius: BorderRadius.circular(100.h),
                  alignment: Alignment.centerLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage20240309147x186,
                  height: 147.v,
                  width: 186.h,
                  radius: BorderRadius.circular(73.h),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 18.v))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Videocamera:
        return AppRoutes.dmEngelliPage;
      case BottomBarEnum.Chatting01:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dmEngelliPage:
        return DmEngelliPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the gonulluProfiliScreen when the action is triggered.
  onTapLock() {
    Get.toNamed(
      AppRoutes.gonulluProfiliScreen,
    );
  }
}
