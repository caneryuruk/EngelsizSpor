import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_drop_down.dart';
import 'package:engelsiz_spor/core/utils/validation_functions.dart';
import 'package:engelsiz_spor/widgets/custom_outlined_button.dart';
import 'package:engelsiz_spor/widgets/custom_checkbox_button.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/engelli_sign_up_controller.dart';
import 'package:engelsiz_spor/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';
import 'package:engelsiz_spor/presentation/sign_up_success_dialog/controller/sign_up_success_controller.dart';

// ignore_for_file: must_be_immutable
class EngelliSignUpScreen extends GetWidget<EngelliSignUpController> {
  EngelliSignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 31.h, vertical: 32.v),
                            child: Column(children: [
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                      height: 160.v,
                                      width: 226.h,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgWhatsappImage,
                                                height: 137.v,
                                                width: 120.h,
                                                alignment:
                                                    Alignment.bottomRight),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 27.h,
                                                        bottom: 120.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrowLeft,
                                                              height:
                                                                  40.adaptSize,
                                                              width:
                                                                  40.adaptSize,
                                                              onTap: () {
                                                                onTapImgArrowLeft();
                                                              }),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 7.v,
                                                                      bottom:
                                                                          10.v),
                                                              child: Text(
                                                                  "lbl_kay_t_ol"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleMediumOnPrimary))
                                                        ])))
                                          ]))),
                              _buildInput(),
                              SizedBox(height: 14.v),
                              _buildInput1(),
                              SizedBox(height: 14.v),
                              _buildInput2(),
                              SizedBox(height: 14.v),
                              _buildInput3(),
                              SizedBox(height: 12.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 20.v, 19.h, 22.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckmarkBlack900,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize)),
                                  hintText: "msg_ehrinizi_se_iniz".tr,
                                  items: controller.engelliSignUpModelObj.value
                                      .dropdownItemList!.value,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          20.h, 20.v, 27.h, 19.v),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMapslocation02,
                                          height: 17.adaptSize,
                                          width: 17.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 56.v),
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              SizedBox(height: 10.v),
                              _buildInput4(),
                              SizedBox(height: 30.v),
                              _buildEngelliRaporuYkle(),
                              SizedBox(height: 28.v),
                              _buildOkudumkabulediyorum()
                            ]))))),
            bottomNavigationBar: _buildSignUp()));
  }

  /// Section Widget
  Widget _buildInput() {
    return CustomTextFormField(
        controller: controller.inputController,
        hintText: "lbl_ad_soyad".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(22.h, 20.v, 25.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 17.adaptSize,
                width: 17.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildInput1() {
    return CustomTextFormField(
        controller: controller.inputController1,
        hintText: "lbl_ya".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(21.h, 21.v, 26.h, 18.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 17.adaptSize,
                width: 17.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildInput2() {
    return CustomTextFormField(
        controller: controller.inputController2,
        hintText: "lbl_e_posta".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(20.h, 19.v, 26.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail01,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildInput3() {
    return CustomTextFormField(
        controller: controller.inputController3,
        hintText: "msg_telefon_numaras".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 21.v, 23.h, 18.v),
            child: CustomImageView(
                imagePath: ImageConstant
                    .imgPhonetelephoneandroidphonemobiledevicesmartphoneiphone,
                height: 17.adaptSize,
                width: 17.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildInput4() {
    return Obx(() => CustomTextFormField(
        controller: controller.inputController4,
        hintText: "lbl_parola".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(21.h, 20.v, 26.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant
                    .imgInterfacelockcombinationcombolocklockedpadlocksecuresecurityshieldkeyhole,
                height: 17.adaptSize,
                width: 17.adaptSize)),
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
  Widget _buildEngelliRaporuYkle() {
    return CustomOutlinedButton(
        height: 35.v,
        text: "msg_engelli_raporu_y_kle".tr,
        margin: EdgeInsets.only(left: 42.h, right: 47.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant
                    .imgInterfaceuploadbutton2arrowbottomdownloadinternetnetworkerverupupload,
                height: 14.adaptSize,
                width: 14.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL17,
        buttonTextStyle: CustomTextStyles.bodyLargePrimaryContainer);
  }

  /// Section Widget
  Widget _buildOkudumkabulediyorum() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(() => CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "msg_okudum_kabul_ediyorum2".tr,
                value: controller.okudumkabulediyorum.value,
                textStyle: CustomTextStyles.bodyMediumInterBluegray800,
                onChange: (value) {
                  controller.okudumkabulediyorum.value = value;
                }))));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        margin: EdgeInsets.only(left: 31.h, right: 32.h, bottom: 30.v),
        onPressed: () {
          onTapSignUp();
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Displays a dialog with the [SignUpSuccessDialog] content.
  onTapSignUp() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: SignUpSuccessDialog(
        Get.put(
          SignUpSuccessController(),
        ),
      ),
    ));
  }
}
