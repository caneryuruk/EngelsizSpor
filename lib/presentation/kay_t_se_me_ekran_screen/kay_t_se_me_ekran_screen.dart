import 'package:engelsiz_spor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/kay_t_se_me_ekran_controller.dart';

class KayTSeMeEkranScreen extends GetWidget<KayTSeMeEkranController> {
  const KayTSeMeEkranScreen({Key? key}) : super(key: key);

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
                          text: "lbl_engelli_kayd".tr,
                          onPressed: () {
                            onTapEngelliKayd();
                          }),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          width: 263.h,
                          text: "lbl_g_n_ll_kayd".tr,
                          onPressed: () {
                            onTapGnllKayd();
                          })
                    ]))));
  }

  /// Navigates to the engelliSignUpScreen when the action is triggered.
  onTapEngelliKayd() {
    Get.toNamed(
      AppRoutes.engelliSignUpScreen,
    );
  }

  /// Navigates to the gNLlErSignUpScreen when the action is triggered.
  onTapGnllKayd() {
    Get.toNamed(
      AppRoutes.gNLlErSignUpScreen,
    );
  }
}
