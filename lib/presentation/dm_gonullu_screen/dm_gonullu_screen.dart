import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/custom_search_view.dart';
import 'widgets/dmgonullu_item_widget.dart';
import 'models/dmgonullu_item_model.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/dm_gonullu_controller.dart';

class DmGonulluScreen extends GetWidget<DmGonulluController> {
  const DmGonulluScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 12.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 16.v),
                              decoration: AppDecoration.fillGray,
                              child: Column(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: CustomSearchView(
                                        controller:
                                            controller.searchController)),
                                SizedBox(height: 26.v),
                                _buildDmgonullu(),
                                SizedBox(height: 26.v)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(height: 68.v, actions: [
      Container(
          height: 29.279999.v,
          width: 30.h,
          margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 13.v),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 29.v,
                width: 30.h,
                alignment: Alignment.center),
            CustomImageView(
                imagePath: ImageConstant.imgVectorBlack90001,
                height: 25.v,
                width: 26.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 1.h, top: 4.v, right: 2.h))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildDmgonullu() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 11.v);
        },
        itemCount:
            controller.dmGonulluModelObj.value.dmgonulluItemList.value.length,
        itemBuilder: (context, index) {
          DmgonulluItemModel model =
              controller.dmGonulluModelObj.value.dmgonulluItemList.value[index];
          return DmgonulluItemWidget(model, onTapAmilzgr: () {
            onTapAmilzgr();
          });
        }));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Videocamera:
        return AppRoutes.dmEngelliPage;
      case BottomBarEnum.Chatting01:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dmEngelliPage:
        return DmEngelliPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the dmDetEngelliScreen when the action is triggered.
  onTapAmilzgr() {
    Get.toNamed(
      AppRoutes.dmDetEngelliScreen,
    );
  }
}
