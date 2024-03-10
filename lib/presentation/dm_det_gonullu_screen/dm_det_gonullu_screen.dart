import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/dm_det_gonullu_controller.dart';

class DmDetGonulluScreen extends GetWidget<DmDetGonulluController> {
  const DmDetGonulluScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        decoration: AppDecoration.fillGray,
                        child: Column(children: [
                          _buildLock(),
                          SizedBox(height: 368.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 239.h,
                                  margin:
                                      EdgeInsets.only(left: 13.h, right: 138.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.h, vertical: 13.v),
                                  decoration: AppDecoration.outlinePrimary5
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10.v),
                                        Container(
                                            width: 191.h,
                                            margin:
                                                EdgeInsets.only(right: 15.h),
                                            child: Text(
                                                "msg_merhaba_ben_brahim".tr,
                                                maxLines: 9,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodyMediumComfortaa)),
                                        SizedBox(height: 9.v),
                                        Text("lbl_21_59".tr,
                                            style:
                                                CustomTextStyles.bodySmallLato)
                                      ]))),
                          SizedBox(height: 14.v),
                          Padding(
                              padding: EdgeInsets.only(left: 13.h, right: 12.h),
                              child: CustomTextFormField(
                                  controller: controller.messageController,
                                  hintText: "lbl_message".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyMediumComfortaaGray60002,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          5.h, 6.v, 14.h, 5.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgCamera,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 35.v),
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 6.v, 30.h, 5.v),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMicrophone,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 35.v),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9.v),
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlinePrimaryTL10,
                                  fillColor: appTheme.whiteA70002))
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgLockBlack90001,
          margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 25.v),
          onTap: () {
            onTapLock();
          })
    ], styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildLock() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
        decoration: AppDecoration.outlinePrimary,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgAvatar, height: 46.v, width: 49.h),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 7.v, bottom: 4.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_brahim_y_lmaz".tr,
                        style: CustomTextStyles.bodyMediumLato),
                    SizedBox(height: 3.v),
                    Text("lbl_basketbol".tr,
                        style: CustomTextStyles.bodySmallLatoGray60003)
                  ]))
        ]));
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
