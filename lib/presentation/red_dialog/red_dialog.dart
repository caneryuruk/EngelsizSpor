import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/red_controller.dart';

// ignore_for_file: must_be_immutable
class RedDialog extends StatelessWidget {
  RedDialog(this.controller, {Key? key}) : super(key: key);

  RedController controller;

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
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v),
              decoration: AppDecoration.fillGray5001
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder51),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 49.v,
                  width: 51.h,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgClose();
                  })),
          SizedBox(height: 40.v),
          SizedBox(
              width: 112.h,
              child: Text("msg_ba_vuruyu_reddettiniz".tr,
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

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }

  /// Navigates to the gonulluAnaSayfasiScreen when the action is triggered.
  onTapAnaSayfayaGeriDn() {
    Get.toNamed(
      AppRoutes.gonulluAnaSayfasiScreen,
    );
  }
}
