import '../models/sidebargonullu1_item_model.dart';
import '../controller/sidebar_gonullu_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class Sidebargonullu1ItemWidget extends StatelessWidget {
  Sidebargonullu1ItemWidget(
    this.sidebargonullu1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sidebargonullu1ItemModel sidebargonullu1ItemModelObj;

  var controller = Get.find<SidebarGonulluController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82.v,
      width: 81.h,
      margin: EdgeInsets.only(bottom: 6.v),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 77.v,
              width: 78.h,
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.outlinePrimary3.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder30,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: sidebargonullu1ItemModelObj.jimnastik!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMenu,
            height: 19.v,
            width: 20.h,
            alignment: Alignment.bottomRight,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                bottom: 18.v,
              ),
              child: Obx(
                () => Text(
                  sidebargonullu1ItemModelObj.jimnastik1!.value,
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
