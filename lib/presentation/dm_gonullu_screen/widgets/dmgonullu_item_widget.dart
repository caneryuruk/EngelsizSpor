import '../models/dmgonullu_item_model.dart';
import '../controller/dm_gonullu_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class DmgonulluItemWidget extends StatelessWidget {
  DmgonulluItemWidget(
    this.dmgonulluItemModelObj, {
    Key? key,
    this.onTapAmilzgr,
  }) : super(
          key: key,
        );

  DmgonulluItemModel dmgonulluItemModelObj;

  var controller = Get.find<DmGonulluController>();

  VoidCallback? onTapAmilzgr;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAmilzgr!.call();
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
                top: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      dmgonulluItemModelObj.amilZgR!.value,
                      style: CustomTextStyles.bodyMediumLato,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      dmgonulluItemModelObj.basketbol!.value,
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
