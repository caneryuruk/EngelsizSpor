import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/giris_se_me_ekran_controller.dart';

class GirisSeMeEkranScreen extends GetWidget<GirisSeMeEkranController> {
  const GirisSeMeEkranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                          width: 263.h,
                          text: "lbl_engelli_giri_i".tr,
                          onPressed: () {
                            onTapEngelliGirii();
                          }),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          width: 263.h,
                          text: "lbl_g_n_ll_giri_i".tr,
                          onPressed: () {
                            onTapGnllGirii();
                          })
                    ]))));
  }

  /// Navigates to the engelliLogInScreen when the action is triggered.
  onTapEngelliGirii() {
    Get.toNamed(
      AppRoutes.engelliLogInScreen,
    );
  }

  /// Navigates to the gonulluLogInScreen when the action is triggered.
  onTapGnllGirii() {
    Get.toNamed(
      AppRoutes.gonulluLogInScreen,
    );
  }
}
