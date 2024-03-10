import '../models/sidebarengelli_item_model.dart';
import '../controller/sidebar_engelli_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class SidebarengelliItemWidget extends StatelessWidget {
  SidebarengelliItemWidget(
    this.sidebarengelliItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SidebarengelliItemModel sidebarengelliItemModelObj;

  var controller = Get.find<SidebarEngelliController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.v,
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
                  imagePath: sidebarengelliItemModelObj.bowling!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: sidebarengelliItemModelObj.bowling1!.value,
              height: 19.v,
              width: 20.h,
              alignment: Alignment.bottomRight,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: Obx(
                () => Text(
                  sidebarengelliItemModelObj.bowling2!.value,
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
