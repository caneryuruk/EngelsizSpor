import '../models/brahimylmazn_item_model.dart';
import '../controller/engelli_ana_sayfasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';

// ignore: must_be_immutable
class BrahimylmaznItemWidget extends StatelessWidget {
  BrahimylmaznItemWidget(
    this.brahimylmaznItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BrahimylmaznItemModel brahimylmaznItemModelObj;

  var controller = Get.find<EngelliAnaSayfasiController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse14660x60,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 56.v),
            child: Obx(
              () => Text(
                brahimylmaznItemModelObj.brahimYLmazN!.value,
                style: CustomTextStyles.bodyMediumInter_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
