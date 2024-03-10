import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/ifre_de_i_tir_controller.dart';

class IfreDeITirScreen extends GetWidget<IfreDeITirController> {
  const IfreDeITirScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Container(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 99.v),
                        decoration: AppDecoration.fillGray,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 49.h, right: 247.h, bottom: 197.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_phone_number".tr,
                                            style: CustomTextStyles
                                                .bodyMediumInterBlack90001),
                                        SizedBox(height: 43.v),
                                        Text("lbl_password".tr,
                                            style: CustomTextStyles
                                                .bodyMediumInterBlack90001)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 44.h, bottom: 128.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgMusic,
                              height: 12.v,
                              width: 17.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 54.h, bottom: 145.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 54.h, bottom: 202.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgMusic,
                              height: 12.v,
                              width: 17.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 53.h, bottom: 204.v)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.h, vertical: 14.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgWhatsappImage,
                                            height: 137.v,
                                            width: 120.h,
                                            margin:
                                                EdgeInsets.only(left: 98.h)),
                                        SizedBox(height: 15.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 85.h),
                                            child: Text(
                                                "msg_ifreni_de_i_tir".tr,
                                                style: CustomTextStyles
                                                    .titleLargeComfortaa)),
                                        SizedBox(height: 52.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 14.h),
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .yeniparolaController,
                                                hintText: "lbl_yeni_parola".tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyMediumInterGray60001,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 19.h,
                                                        vertical: 15.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlinePrimaryTL6,
                                                fillColor:
                                                    appTheme.blueGray50)),
                                        SizedBox(height: 6.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 14.h),
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .fifteenController,
                                                hintText:
                                                    "msg_yeni_parolan_do_rula"
                                                        .tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyMediumInterGray60001,
                                                textInputAction:
                                                    TextInputAction.done,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 19.h,
                                                        vertical: 15.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlinePrimaryTL6,
                                                fillColor:
                                                    appTheme.blueGray50)),
                                        SizedBox(height: 20.v),
                                        CustomElevatedButton(
                                            height: 48.v,
                                            width: 160.h,
                                            text: "msg_ifreni_de_i_tir".tr,
                                            margin: EdgeInsets.only(left: 78.h),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL6,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyMediumInterWhiteA70002,
                                            onPressed: () {
                                              onTapIfreniDeitir();
                                            }),
                                        SizedBox(height: 20.v)
                                      ])))
                        ]))))));
  }

  /// Navigates to the girisSeMeEkranScreen when the action is triggered.
  onTapIfreniDeitir() {
    Get.toNamed(
      AppRoutes.girisSeMeEkranScreen,
    );
  }
}
