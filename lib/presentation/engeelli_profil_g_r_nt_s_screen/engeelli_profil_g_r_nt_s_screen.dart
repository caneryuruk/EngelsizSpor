import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/engeelli_profil_g_r_nt_s_controller.dart';
import 'package:engelsiz_spor/presentation/red_dialog/red_dialog.dart';
import 'package:engelsiz_spor/presentation/red_dialog/controller/red_controller.dart';
import 'package:engelsiz_spor/presentation/kabul_dialog/kabul_dialog.dart';
import 'package:engelsiz_spor/presentation/kabul_dialog/controller/kabul_controller.dart';

class EngeelliProfilGRNtSScreen
    extends GetWidget<EngeelliProfilGRNtSController> {
  const EngeelliProfilGRNtSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFortyFive(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 11.v),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgAge1,
                            height: 24.v,
                            width: 33.h),
                        SizedBox(height: 8.v),
                        Text("lbl_22".tr,
                            style: CustomTextStyles.bodyLargeManropeBlack90001),
                        SizedBox(height: 31.v),
                        _buildFrame(),
                        SizedBox(height: 27.v),
                        _buildSixtySeven(),
                        SizedBox(height: 42.v),
                        _buildClose(),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildFortyFive() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup39), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(height: 19.v),
          CustomAppBar(height: 30.v, actions: [
            Container(
                height: 29.279999.v,
                width: 30.h,
                margin: EdgeInsets.symmetric(horizontal: 21.h),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 29.v,
                      width: 30.h,
                      alignment: Alignment.center),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack90001,
                      height: 25.v,
                      width: 26.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 1.h, top: 4.v, right: 2.h))
                ]))
          ]),
          SizedBox(height: 25.v),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse146,
              height: 130.adaptSize,
              width: 130.adaptSize,
              radius: BorderRadius.circular(65.h)),
          SizedBox(height: 14.v),
          Text("lbl_amil_zg_r".tr, style: theme.textTheme.titleLarge)
        ]));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                  width: 245.h,
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
                        GestureDetector(
                            onTap: () {
                              onTapTxtProfiliniDZenle();
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("msg_telefon_numaras".tr,
                                    style: theme.textTheme.bodyMedium))),
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
  Widget _buildClose() {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: _buildFortyThree(
                  checkmark: ImageConstant.imgClose,
                  baVuruyuKabul: "msg_ba_vuruyu_reddet".tr,
                  onTapFortyThree: () {
                    onTapFortyFour();
                  })),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: _buildFortyThree(
                  checkmark: ImageConstant.imgCheckmarkPrimary,
                  baVuruyuKabul: "msg_ba_vuruyu_kabul".tr,
                  onTapFortyThree: () {
                    onTapFortyThree();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildFortyThree({
    required String checkmark,
    required String baVuruyuKabul,
    Function? onTapFortyThree,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFortyThree!.call();
        },
        child: Expanded(
            child: SizedBox(
                width: double.maxFinite,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
                    decoration: AppDecoration.fillBluegray100,
                    child: Column(children: [
                      SizedBox(height: 15.v),
                      CustomImageView(
                          imagePath: checkmark,
                          height: 39.v,
                          width: 51.h,
                          radius: BorderRadius.circular(3.h)),
                      SizedBox(height: 17.v),
                      Text(baVuruyuKabul,
                          style: CustomTextStyles.bodyMedium13
                              .copyWith(color: appTheme.black90001))
                    ])))));
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

  /// Navigates to the profilDZenlemeEngelliScreen when the action is triggered.
  onTapTxtProfiliniDZenle() {
    Get.toNamed(
      AppRoutes.profilDZenlemeEngelliScreen,
    );
  }

  /// Displays a dialog with the [RedDialog] content.
  onTapFortyFour() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: RedDialog(
        Get.put(
          RedController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [KabulDialog] content.
  onTapFortyThree() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: KabulDialog(
        Get.put(
          KabulController(),
        ),
      ),
    ));
  }
}
