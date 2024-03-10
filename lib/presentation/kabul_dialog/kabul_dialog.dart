import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/kabul_controller.dart';

// ignore_for_file: must_be_immutable
class KabulDialog extends StatelessWidget {
  KabulDialog(this.controller, {Key? key}) : super(key: key);

  KabulController controller;

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
          SizedBox(height: 40.v),
          Container(
              width: 163.h,
              margin: EdgeInsets.symmetric(horizontal: 9.h),
              child: Text("msg_ba_vuruyu_kabul2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeInterOnPrimary
                      .copyWith(height: 1.25))),
          SizedBox(height: 54.v),
          CustomElevatedButton(
              text: "msg_ana_sayfaya_geri".tr,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA70002,
              onPressed: () {
                onTapAnaSayfayaGeriDn();
              })
        ]));
  }

  /// Navigates to the gonulluAnaSayfasiScreen when the action is triggered.
  onTapAnaSayfayaGeriDn() {
    Get.toNamed(
      AppRoutes.gonulluAnaSayfasiScreen,
    );
  }
}
