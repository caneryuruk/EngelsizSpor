import '../models/simbrahimylmaz_item_model.dart';
import '../controller/engelli_ana_sayfasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class SimbrahimylmazItemWidget extends StatelessWidget {
  SimbrahimylmazItemWidget(
    this.simbrahimylmazItemModelObj, {
    Key? key,
    this.onTapChat,
  }) : super(
          key: key,
        );

  SimbrahimylmazItemModel simbrahimylmazItemModelObj;

  var controller = Get.find<EngelliAnaSayfasiController>();

  VoidCallback? onTapChat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapChat!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlinePrimary1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse14660x60,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                30.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 9.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                bottom: 14.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 131.h,
                    child: Obx(
                      () => Text(
                        simbrahimylmazItemModelObj.simBrahimYLmaz!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumInter_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      simbrahimylmazItemModelObj.profiliGRNtLemek!.value,
                      style:
                          CustomTextStyles.bodyMediumInterBlack90001_1.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
