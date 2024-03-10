import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:engelsiz_spor/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/login_sign_up_se_me_ekran_controller.dart';

class LoginSignUpSeMeEkranScreen
    extends GetWidget<LoginSignUpSeMeEkranController> {
  const LoginSignUpSeMeEkranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 48.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgWhatsappImage,
                          height: 137.v,
                          width: 120.h),
                      SizedBox(height: 47.v),
                      Text("msg_hadi_ba_layal_m".tr,
                          style: CustomTextStyles.titleLargeInterOnPrimaryBold),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 278.h,
                              margin: EdgeInsets.only(right: 15.h),
                              child: Text("msg_stedi_in_g_n_ll_yle".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLargeGray600
                                      .copyWith(height: 1.50)))),
                      SizedBox(height: 65.v),
                      CustomElevatedButton(
                          text: "lbl_giri_yap".tr,
                          margin: EdgeInsets.only(left: 14.h, right: 15.h),
                          onPressed: () {
                            onTapGiriYap();
                          }),
                      SizedBox(height: 16.v),
                      CustomOutlinedButton(
                          text: "lbl_kay_t_ol".tr,
                          margin: EdgeInsets.only(left: 14.h, right: 15.h),
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                          onPressed: () {
                            onTapKaytOl();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the girisSeMeEkranScreen when the action is triggered.
  onTapGiriYap() {
    Get.toNamed(
      AppRoutes.girisSeMeEkranScreen,
    );
  }

  /// Navigates to the kayTSeMeEkranScreen when the action is triggered.
  onTapKaytOl() {
    Get.toNamed(
      AppRoutes.kayTSeMeEkranScreen,
    );
  }
}
