import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_leading_image.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:engelsiz_spor/widgets/custom_icon_button.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/engelli_profili_controller.dart';

class EngelliProfiliScreen extends GetWidget<EngelliProfiliController> {
  const EngelliProfiliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTelevision(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 10.v),
                      child: Column(children: [
                        _buildFortySix(),
                        SizedBox(height: 20.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgAge1,
                            height: 24.v,
                            width: 33.h),
                        SizedBox(height: 8.v),
                        Text("lbl_22".tr,
                            style: CustomTextStyles.bodyLargeManropeBlack90001),
                        SizedBox(height: 23.v),
                        _buildSixtySeven(),
                        SizedBox(height: 37.v),
                        _buildSixtySeven1(),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildTelevision() {
    return SizedBox(
        height: 278.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup39),
                          fit: BoxFit.cover)),
                  child: CustomAppBar(
                      height: 30.v,
                      leadingWidth: 53.h,
                      leading: AppbarLeadingImage(
                          imagePath: ImageConstant.imgTelevision,
                          margin: EdgeInsets.only(left: 30.h, bottom: 7.v),
                          onTap: () {
                            onTapTelevision();
                          }),
                      actions: [
                        AppbarTrailingImage(
                            imagePath: ImageConstant.imgLockBlack90001,
                            margin: EdgeInsets.symmetric(horizontal: 21.h))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 126.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 141.v,
                        width: 130.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse146,
                              height: 130.adaptSize,
                              width: 130.adaptSize,
                              radius: BorderRadius.circular(65.h),
                              alignment: Alignment.topCenter),
                          Padding(
                              padding: EdgeInsets.only(right: 3.h),
                              child: CustomIconButton(
                                  height: 46.adaptSize,
                                  width: 46.adaptSize,
                                  padding: EdgeInsets.all(11.h),
                                  alignment: Alignment.bottomRight,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLineDesignEditLine)))
                        ])),
                    SizedBox(height: 3.v),
                    Text("lbl_amil_zg_r".tr, style: theme.textTheme.titleLarge)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFortySix() {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                  width: 352.h,
                  child: Text("msg_ortopedik_engelliyim".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumManrope
                          .copyWith(height: 1.41)))
            ]));
  }

  /// Section Widget
  Widget _buildSixtySeven() {
    return Container(
        margin: EdgeInsets.only(left: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMail01,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text("lbl_e_posta".tr,
                                style: theme.textTheme.bodyMedium)),
                        Spacer(),
                        Text("msg_samilozgur_gmail_com".tr,
                            style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgPhonetelephoneandroidphonemobiledevicesmartphoneiphone,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("msg_telefon_numaras".tr,
                                style: theme.textTheme.bodyMedium)),
                        Spacer(),
                        Text("lbl_0533_55_55".tr,
                            style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMapslocation02,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h, top: 2.v),
                            child: Text("lbl_ehir".tr,
                                style: theme.textTheme.bodyMedium)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("lbl_trabzon".tr,
                                style: theme.textTheme.bodyMedium))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildSixtySeven1() {
    return Container(
        margin: EdgeInsets.only(left: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              GestureDetector(
                  onTap: () {
                    onTapComponentEleven();
                  },
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineBusinessProfileLine,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 13.h, top: 3.v, bottom: 3.v),
                        child: Text("msg_profilini_d_zenle2".tr,
                            style: theme.textTheme.bodyMedium))
                  ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      image: ImageConstant.imgLineMediaNoti,
                      profiliniDZenle: "lbl_bildirimler".tr,
                      english: "lbl_a_k".tr)),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      image: ImageConstant.imgLineEditorTranslate2,
                      profiliniDZenle: "lbl_dil".tr,
                      english: "lbl_t_rk_e".tr))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildComponentThirteen({
    required String image,
    required String profiliniDZenle,
    required String english,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: image, height: 24.adaptSize, width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 3.v),
          child: Text(profiliniDZenle,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black90001))),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
          child: Text(english,
              style: CustomTextStyles.bodyMediumBlack900
                  .copyWith(color: appTheme.black900)))
    ]);
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

  /// Navigates to the sidebarEngelliScreen when the action is triggered.
  onTapTelevision() {
    Get.toNamed(
      AppRoutes.sidebarEngelliScreen,
    );
  }

  /// Navigates to the profilDZenlemeEngelliScreen when the action is triggered.
  onTapComponentEleven() {
    Get.toNamed(
      AppRoutes.profilDZenlemeEngelliScreen,
    );
  }
}
