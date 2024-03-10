import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/sign_up_success_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpSuccessDialog extends StatelessWidget {
  SignUpSuccessDialog(this.controller, {Key? key}) : super(key: key);

  SignUpSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 37.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 22.v),
          Container(
              height: 102.adaptSize,
              width: 102.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
              decoration: AppDecoration.fillGray5001
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder51),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 31.v,
                  width: 41.h,
                  radius: BorderRadius.circular(3.h),
                  alignment: Alignment.center)),
          SizedBox(height: 42.v),
          Text("lbl_ba_ar_l".tr,
              style: CustomTextStyles.titleLargeInterOnPrimary),
          SizedBox(height: 16.v),
          Text("msg_hesab_n_z_ba_ar_l_yla".tr,
              style: CustomTextStyles.bodyLarge_1),
          SizedBox(height: 41.v),
          CustomElevatedButton(
              width: 183.h,
              text: "lbl_giri_yap_n2".tr,
              buttonTextStyle: CustomTextStyles.titleLargeInterOnPrimary,
              onPressed: () {
                onTapGiriYapn();
              })
        ]));
  }

  /// Navigates to the girisSeMeEkranScreen when the action is triggered.
  onTapGiriYapn() {
    Get.toNamed(
      AppRoutes.girisSeMeEkranScreen,
    );
  }
}
