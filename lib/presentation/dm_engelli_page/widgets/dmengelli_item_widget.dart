import '../models/dmengelli_item_model.dart';
import '../controller/dm_engelli_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class DmengelliItemWidget extends StatelessWidget {
  DmengelliItemWidget(
    this.dmengelliItemModelObj, {
    Key? key,
    this.onTapBrahimYlmaz,
  }) : super(
          key: key,
        );

  DmengelliItemModel dmengelliItemModelObj;

  var controller = Get.find<DmEngelliController>();

  VoidCallback? onTapBrahimYlmaz;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBrahimYlmaz!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder30,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 46.adaptSize,
              width: 46.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      dmengelliItemModelObj.brahimYLmaz!.value,
                      style: CustomTextStyles.bodyMediumLato,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Obx(
                    () => Text(
                      dmengelliItemModelObj.basketbol!.value,
                      style: CustomTextStyles.bodySmallLatoGray60003,
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
