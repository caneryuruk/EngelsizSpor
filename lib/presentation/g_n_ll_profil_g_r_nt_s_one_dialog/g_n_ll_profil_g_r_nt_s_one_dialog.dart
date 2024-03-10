import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/g_n_ll_profil_g_r_nt_s_one_controller.dart';

// ignore_for_file: must_be_immutable
class GNLlProfilGRNtSOneDialog extends StatelessWidget {
  GNLlProfilGRNtSOneDialog(this.controller, {Key? key}) : super(key: key);

  GNLlProfilGRNtSOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 71.h, vertical: 37.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
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
          Text("msg_ba_vurunuz_al_nd".tr, style: CustomTextStyles.bodyLarge_1),
          SizedBox(height: 41.v),
          CustomElevatedButton(
              text: "msg_ana_sayfaya_geri".tr,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA70002,
              onPressed: () {
                onTapAnaSayfayaGeriDn();
              })
        ]));
  }

  /// Navigates to the engelliAnaSayfasiScreen when the action is triggered.
  onTapAnaSayfayaGeriDn() {
    Get.toNamed(
      AppRoutes.engelliAnaSayfasiScreen,
    );
  }
}
