import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/ho_geldin_ekran_controller.dart';

class HoGeldinEkranScreen extends GetWidget<HoGeldinEkranController> {
  const HoGeldinEkranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001.withOpacity(0.2),
            body: Container(
                height: SizeUtils.height,
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 45.h, vertical: 165.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text("lbl_engelsizspor".tr,
                              style: theme.textTheme.displaySmall))),
                  CustomImageView(
                      imagePath: ImageConstant.imgWhatsappImage,
                      height: 342.v,
                      width: 300.h,
                      alignment: Alignment.topCenter)
                ]))));
  }
}
