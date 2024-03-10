import 'package:dotted_border/dotted_border.dart';
import 'package:engelsiz_spor/widgets/custom_icon_button.dart';
import 'package:engelsiz_spor/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/frame_513821_controller.dart';

// ignore_for_file: must_be_immutable
class Frame513821Screen extends GetWidget<Frame513821Controller> {
  const Frame513821Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 351.h,
          padding: EdgeInsets.symmetric(
            horizontal: 65.h,
            vertical: 102.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 44.h),
                decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: DottedBorder(
                  color: appTheme.deepPurpleA200,
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  radius: Radius.circular(5),
                  borderType: BorderType.RRect,
                  dashPattern: [
                    10,
                    5,
                  ],
                  child: Padding(
                    padding: EdgeInsets.all(19.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClose24x24,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgProperty1EyeIcon,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 20.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Container(
                margin: EdgeInsets.only(
                  left: 36.h,
                  right: 13.h,
                ),
                decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: DottedBorder(
                  color: appTheme.deepPurpleA200,
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  radius: Radius.circular(5),
                  borderType: BorderType.RRect,
                  dashPattern: [
                    10,
                    5,
                  ],
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgNotification01,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 1.v,
                          ),
                          child: CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration: IconButtonStyleHelper.fillWhiteA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgElements,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 91.v),
              Container(
                margin: EdgeInsets.only(left: 40.h),
                decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: DottedBorder(
                  color: appTheme.deepPurpleA200,
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  radius: Radius.circular(5),
                  borderType: BorderType.RRect,
                  dashPattern: [
                    10,
                    5,
                  ],
                  child: Padding(
                    padding: EdgeInsets.all(19.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomSwitch(
                            value: controller.isSelectedSwitch.value,
                            onChange: (value) {
                              controller.isSelectedSwitch.value = value;
                            },
                          ),
                        ),
                        Obx(
                          () => CustomSwitch(
                            value: controller.isSelectedSwitch1.value,
                            onChange: (value) {
                              controller.isSelectedSwitch1.value = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: DottedBorder(
                    color: appTheme.deepPurpleA200,
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      10,
                      5,
                    ],
                    child: Padding(
                      padding: EdgeInsets.all(19.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMenu,
                            height: 19.v,
                            width: 20.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgProperty1Inte,
                            height: 19.v,
                            width: 20.h,
                            margin: EdgeInsets.only(left: 31.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
