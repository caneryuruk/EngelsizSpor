import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_subtitle.dart';
import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/profil_d_zenleme_engelli_controller.dart';

class ProfilDZenlemeEngelliScreen
    extends GetWidget<ProfilDZenlemeEngelliController> {
  const ProfilDZenlemeEngelliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v),
                child: Column(children: [
                  _buildBigOutline(),
                  SizedBox(height: 19.v),
                  _buildBigOutline1(),
                  SizedBox(height: 19.v),
                  _buildBigOutline2(),
                  SizedBox(height: 19.v),
                  _buildBigOutline3(),
                  Spacer(flex: 27),
                  _buildKaydet(),
                  Spacer(flex: 72)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 106.v,
        leadingWidth: 58.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 34.h, top: 16.v, bottom: 15.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "msg_profilini_d_zenle".tr));
  }

  /// Section Widget
  Widget _buildLabel() {
    return CustomTextFormField(
        width: 342.h,
        controller: controller.labelController,
        hintText: "lbl_sim_soyisim".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoGray90001,
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v));
  }

  /// Section Widget
  Widget _buildBigOutline() {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                  child: Text("lbl_puerto_rico".tr,
                      style: CustomTextStyles.bodyMediumGray90001))),
          _buildLabel()
        ]));
  }

  /// Section Widget
  Widget _buildLabel1() {
    return CustomTextFormField(
        width: 342.h,
        controller: controller.labelController1,
        hintText: "lbl_e_posta".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoGray90001,
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v));
  }

  /// Section Widget
  Widget _buildBigOutline1() {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 7.v),
                  child: Text("msg_youremail_domain_com".tr,
                      style: CustomTextStyles.bodyMediumGray90001))),
          _buildLabel1()
        ]));
  }

  /// Section Widget
  Widget _buildLabel2() {
    return CustomTextFormField(
        width: 342.h,
        controller: controller.labelController2,
        hintText: "lbl_telefon".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoGray90001,
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v));
  }

  /// Section Widget
  Widget _buildBigOutline2() {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 7.v),
                  child: Text("msg_youremail_domain_com".tr,
                      style: CustomTextStyles.bodyMediumGray90001))),
          _buildLabel2()
        ]));
  }

  /// Section Widget
  Widget _buildLabel3() {
    return CustomTextFormField(
        width: 342.h,
        controller: controller.labelController3,
        hintText: "lbl_ehir".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoGray90001,
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v));
  }

  /// Section Widget
  Widget _buildBigOutline3() {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 7.v),
                  child: Text("msg_youremail_domain_com".tr,
                      style: CustomTextStyles.bodyMediumGray90001))),
          _buildLabel3()
        ]));
  }

  /// Section Widget
  Widget _buildKaydet() {
    return CustomElevatedButton(
        height: 44.v,
        text: "lbl_kaydet".tr.toUpperCase(),
        buttonStyle: CustomButtonStyles.fillPrimaryTL22,
        buttonTextStyle: CustomTextStyles.titleMediumRobotoGray5003,
        onPressed: () {
          onTapKaydet();
        });
  }

  /// Navigates to the engelliProfiliScreen when the action is triggered.
  onTapKaydet() {
    Get.toNamed(
      AppRoutes.engelliProfiliScreen,
    );
  }
}
