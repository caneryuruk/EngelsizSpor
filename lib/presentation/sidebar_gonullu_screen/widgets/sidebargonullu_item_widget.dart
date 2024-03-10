import '../models/sidebargonullu_item_model.dart';
import '../controller/sidebar_gonullu_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class SidebargonulluItemWidget extends StatelessWidget {
  SidebargonulluItemWidget(
    this.sidebargonulluItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SidebargonulluItemModel sidebargonulluItemModelObj;

  var controller = Get.find<SidebarGonulluController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84.v,
      width: 79.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 77.v,
              width: 78.h,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.outlinePrimary3.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder30,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: sidebargonulluItemModelObj.bowling!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: sidebargonulluItemModelObj.bowling1!.value,
              height: 19.v,
              width: 20.h,
              alignment: Alignment.bottomRight,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 18.v),
              child: Obx(
                () => Text(
                  sidebargonulluItemModelObj.bowling2!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
