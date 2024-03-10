import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_leading_image.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:engelsiz_spor/widgets/custom_search_view.dart';
import 'widgets/dmengelli_item_widget.dart';
import 'models/dmengelli_item_model.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/dm_engelli_controller.dart';
import 'models/dm_engelli_model.dart';

// ignore_for_file: must_be_immutable
class DmEngelliPage extends StatelessWidget {
  DmEngelliPage({Key? key}) : super(key: key);

  DmEngelliController controller =
      Get.put(DmEngelliController(DmEngelliModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 16.v),
                        decoration: AppDecoration.fillGray,
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.h),
                              child: CustomSearchView(
                                  controller: controller.searchController)),
                          SizedBox(height: 26.v),
                          _buildDmengelli(),
                          SizedBox(height: 26.v)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 68.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgTelevision,
            margin: EdgeInsets.only(left: 21.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapTelevision();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockBlack90001,
              margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 13.v),
              onTap: () {
                onTapLock();
              })
        ]);
  }

  /// Section Widget
  Widget _buildDmengelli() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 11.v);
        },
        itemCount:
            controller.dmEngelliModelObj.value.dmengelliItemList.value.length,
        itemBuilder: (context, index) {
          DmengelliItemModel model =
              controller.dmEngelliModelObj.value.dmengelliItemList.value[index];
          return DmengelliItemWidget(model, onTapBrahimYlmaz: () {
            onTapBrahimYlmaz();
          });
        }));
  }

  /// Navigates to the sidebarEngelliScreen when the action is triggered.
  onTapTelevision() {
    Get.toNamed(
      AppRoutes.sidebarEngelliScreen,
    );
  }

  /// Navigates to the engelliProfiliScreen when the action is triggered.
  onTapLock() {
    Get.toNamed(
      AppRoutes.engelliProfiliScreen,
    );
  }

  /// Navigates to the dmDetGonulluScreen when the action is triggered.
  onTapBrahimYlmaz() {
    Get.toNamed(
      AppRoutes.dmDetGonulluScreen,
    );
  }
}
