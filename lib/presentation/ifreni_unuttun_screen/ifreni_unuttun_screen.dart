import 'package:engelsiz_spor/widgets/custom_text_form_field.dart';
import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/ifreni_unuttun_controller.dart';

class IfreniUnuttunScreen extends GetWidget<IfreniUnuttunController> {
  const IfreniUnuttunScreen({Key? key}) : super(key: key);

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
                                      horizontal: 26.h, vertical: 11.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconChevronLeft,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 23.v, bottom: 90.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgWhatsappImage,
                                                  height: 137.v,
                                                  width: 120.h,
                                                  margin: EdgeInsets.only(
                                                      left: 85.h))
                                            ]),
                                        SizedBox(height: 30.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 60.h),
                                            child: Text(
                                                "msg_ifreni_mi_unuttun2".tr,
                                                style: CustomTextStyles
                                                    .titleLargeComfortaa)),
                                        SizedBox(height: 40.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.h, right: 18.h),
                                            child: CustomTextFormField(
                                                controller:
                                                    controller.tenController,
                                                hintText: "msg_90_55_55".tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyMediumInter,
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
                                        SizedBox(height: 74.v),
                                        CustomElevatedButton(
                                            height: 48.v,
                                            width: 160.h,
                                            text: "lbl_sms_g_nder".tr,
                                            margin: EdgeInsets.only(left: 82.h),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL6,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyMediumInterWhiteA70002,
                                            onPressed: () {
                                              onTapSMSGnder();
                                            }),
                                        SizedBox(height: 74.v)
                                      ])))
                        ]))))));
  }

  /// Navigates to the smsKoduScreen when the action is triggered.
  onTapSMSGnder() {
    Get.toNamed(
      AppRoutes.smsKoduScreen,
    );
  }
}
