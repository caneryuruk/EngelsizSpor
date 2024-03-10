import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:engelsiz_spor/core/utils/validation_functions.dart';
import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/gonullu_log_in_controller.dart';

// ignore_for_file: must_be_immutable
class GonulluLogInScreen extends GetWidget<GonulluLogInController> {
  GonulluLogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 31.h),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgWhatsappImage,
                                  height: 137.v,
                                  width: 120.h),
                              SizedBox(height: 23.v),
                              _buildGiriYapn1(),
                              SizedBox(height: 9.v),
                              _buildEleven(),
                              SizedBox(height: 6.v),
                              _buildGoogleHesabnzlaGiriYapn(),
                              SizedBox(height: 16.v),
                              _buildAppleIDIleGiriYapn(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 98.v,
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_giri_yap2".tr));
  }

  /// Section Widget
  Widget _buildGiriYapn() {
    return CustomElevatedButton(
        width: 327.h,
        text: "lbl_giri_yap_n".tr,
        margin: EdgeInsets.only(bottom: 52.v),
        onPressed: () {
          onTapGiriYapn();
        },
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_emailinizi_giriniz".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildLocation() {
    return Obx(() => CustomTextFormField(
        controller: controller.locationController,
        hintText: "msg_parolan_z_giriniz".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 23.h, 16.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgClose24x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.symmetric(vertical: 18.v)));
  }

  /// Section Widget
  Widget _buildGiriYapn1() {
    return SizedBox(
        height: 295.v,
        width: 327.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          _buildGiriYapn(),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Text("lbl_giri_yap_n".tr,
                      style: theme.textTheme.titleMedium))),
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildEmail(),
                SizedBox(height: 16.v),
                _buildLocation(),
                SizedBox(height: 18.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtIfreniziMiUnuttunuz();
                        },
                        child: Text("msg_ifrenizi_mi_unuttunuz".tr,
                            style: theme.textTheme.titleSmall))),
                SizedBox(height: 115.v),
                GestureDetector(
                    onTap: () {
                      onTapTxtHesabNZYokMu();
                    },
                    child: Text("msg_hesab_n_z_yok_mu".tr,
                        style: theme.textTheme.titleSmall))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildEleven() {
    return SizedBox(
        height: 41.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 18.v),
                  child: SizedBox(width: 327.h, child: Divider()))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 20.v,
                  width: 53.h,
                  decoration: BoxDecoration(color: appTheme.whiteA70002))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 18.h,
                  child: Text("lbl_ya_da".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))))
        ]));
  }

  /// Section Widget
  Widget _buildGoogleHesabnzlaGiriYapn() {
    return CustomOutlinedButton(
        text: "msg_google_hesab_n_zla".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 26.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 20.v,
                width: 19.h)));
  }

  /// Section Widget
  Widget _buildAppleIDIleGiriYapn() {
    return CustomOutlinedButton(
        text: "msg_apple_id_ile_gir_i".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgApple, height: 20.v, width: 16.h)));
  }

  /// Navigates to the gonulluAnaSayfasiScreen when the action is triggered.
  onTapGiriYapn() {
    Get.toNamed(
      AppRoutes.gonulluAnaSayfasiScreen,
    );
  }

  /// Navigates to the ifreniUnuttunScreen when the action is triggered.
  onTapTxtIfreniziMiUnuttunuz() {
    Get.toNamed(
      AppRoutes.ifreniUnuttunScreen,
    );
  }

  /// Navigates to the kayTSeMeEkranScreen when the action is triggered.
  onTapTxtHesabNZYokMu() {
    Get.toNamed(
      AppRoutes.kayTSeMeEkranScreen,
    );
  }
}
