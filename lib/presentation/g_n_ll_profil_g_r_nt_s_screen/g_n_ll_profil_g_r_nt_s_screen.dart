import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_leading_image.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/g_n_ll_profil_g_r_nt_s_controller.dart';
import 'package:engelsiz_spor/presentation/g_n_ll_profil_g_r_nt_s_one_dialog/g_n_ll_profil_g_r_nt_s_one_dialog.dart';
import 'package:engelsiz_spor/presentation/g_n_ll_profil_g_r_nt_s_one_dialog/controller/g_n_ll_profil_g_r_nt_s_one_controller.dart';

class GNLlProfilGRNtSScreen extends GetWidget<GNLlProfilGRNtSController> {
  const GNLlProfilGRNtSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTelevision(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 12.v),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 11.v),
                                  child: Column(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAge1,
                                        height: 24.v,
                                        width: 33.h),
                                    SizedBox(height: 9.v),
                                    Text("lbl_29".tr,
                                        style: CustomTextStyles
                                            .bodyLargeManropeBlack90001)
                                  ])),
                              Container(
                                  height: 62.v,
                                  width: 66.h,
                                  margin:
                                      EdgeInsets.only(left: 66.h, bottom: 6.v),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgFire,
                                            height: 57.v,
                                            width: 55.h,
                                            alignment: Alignment.topLeft),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                width: 25.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 3.h,
                                                    vertical: 5.v),
                                                decoration: AppDecoration
                                                    .fillGray20001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder12),
                                                child: Text("lbl_150".tr,
                                                    style: theme.textTheme
                                                        .labelMedium)))
                                      ]))
                            ]),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: CustomTextFormField(
                                controller: controller.thirtySevenController,
                                hintText: "msg_5_y_l_basketbol".tr,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 21.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                                fillColor: appTheme.gray50)),
                        SizedBox(height: 20.v),
                        _buildSixtySeven(),
                        SizedBox(height: 18.v),
                        CustomElevatedButton(
                            height: 89.v,
                            text: "lbl_ba_vuru_yap".tr,
                            margin: EdgeInsets.only(left: 26.h, right: 16.h),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL6,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeRobotoWhiteA70002,
                            onPressed: () {
                              onTapBavuruYap();
                            }),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildTelevision() {
    return SizedBox(
        height: 341.v,
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
                      leadingWidth: 51.h,
                      leading: AppbarLeadingImage(
                          imagePath: ImageConstant.imgTelevision,
                          margin: EdgeInsets.only(left: 21.h),
                          onTap: () {
                            onTapTelevision();
                          }),
                      actions: [
                        AppbarTrailingImage(
                            imagePath: ImageConstant.imgLockBlack90001,
                            margin: EdgeInsets.symmetric(horizontal: 21.h),
                            onTap: () {
                              onTapLock();
                            })
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse146,
                        height: 130.adaptSize,
                        width: 130.adaptSize,
                        radius: BorderRadius.circular(65.h)),
                    SizedBox(height: 11.v),
                    Text("lbl_brahim_y_lmaz".tr,
                        style: theme.textTheme.titleLarge)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildSixtySeven() {
    return Container(
        margin: EdgeInsets.only(left: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildPhoneTelephone(
                      phoneTelephone: ImageConstant.imgMail01,
                      profiliniDZenle: "lbl_e_posta".tr,
                      fiveMillionThreeHundredThirtyF:
                          "msg_ibrahimyilmaz_gmail_com".tr)),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildPhoneTelephone(
                      phoneTelephone: ImageConstant
                          .imgPhonetelephoneandroidphonemobiledevicesmartphoneiphone,
                      profiliniDZenle: "msg_telefon_numaras".tr,
                      fiveMillionThreeHundredThirtyF: "lbl_0533_44_44".tr)),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
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
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildPhoneTelephone({
    required String phoneTelephone,
    required String profiliniDZenle,
    required String fiveMillionThreeHundredThirtyF,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: phoneTelephone, height: 18.adaptSize, width: 18.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(profiliniDZenle,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black90001))),
      Spacer(),
      Text(fiveMillionThreeHundredThirtyF,
          style:
              theme.textTheme.bodyMedium!.copyWith(color: appTheme.black90001))
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

  /// Navigates to the sidebarGonulluScreen when the action is triggered.
  onTapTelevision() {
    Get.toNamed(
      AppRoutes.sidebarGonulluScreen,
    );
  }

  /// Navigates to the engelliProfiliScreen when the action is triggered.
  onTapLock() {
    Get.toNamed(
      AppRoutes.engelliProfiliScreen,
    );
  }

  /// Displays a dialog with the [GNLlProfilGRNtSOneDialog] content.
  onTapBavuruYap() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: GNLlProfilGRNtSOneDialog(
        Get.put(
          GNLlProfilGRNtSOneController(),
        ),
      ),
    ));
  }
}
