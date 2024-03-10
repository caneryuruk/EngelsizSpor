import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/sms_kodu_controller.dart';

class SmsKoduScreen extends GetWidget<SmsKoduController> {
  const SmsKoduScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray300,
            body: Container(
                height: SizeUtils.height,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 99.v),
                child: Stack(alignment: Alignment.bottomRight, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 44.h, bottom: 128.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgMusic,
                      height: 12.v,
                      width: 17.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 54.h, bottom: 145.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 54.h, bottom: 202.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgMusic,
                      height: 12.v,
                      width: 17.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 53.h, bottom: 204.v)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 12.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder25),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgWhatsappImage,
                                height: 137.v,
                                width: 120.h),
                            SizedBox(height: 28.v),
                            Text("msg_ifreni_mi_unuttun".tr,
                                style: CustomTextStyles.titleLargeComfortaa),
                            SizedBox(height: 41.v),
                            Padding(
                                padding: EdgeInsets.only(right: 14.h),
                                child: CustomTextFormField(
                                    controller: controller.languageController,
                                    hintText: "lbl".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumInterGray60001,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.centerLeft,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 15.v),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlinePrimaryTL6,
                                    fillColor: appTheme.blueGray50)),
                            SizedBox(height: 26.v),
                            Text("msg_6_haneli_kodu_giriniz".tr,
                                style: CustomTextStyles.bodyMediumInter),
                            SizedBox(height: 30.v),
                            CustomElevatedButton(
                                height: 48.v,
                                width: 160.h,
                                text: "lbl_kodu_do_rula".tr,
                                buttonStyle: CustomButtonStyles.fillPrimaryTL6,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumInterWhiteA70002,
                                onPressed: () {
                                  onTapKoduDorula();
                                }),
                            SizedBox(height: 30.v)
                          ])))
                ]))));
  }

  /// Navigates to the ifreDeITirScreen when the action is triggered.
  onTapKoduDorula() {
    Get.toNamed(
      AppRoutes.ifreDeITirScreen,
    );
  }
}
