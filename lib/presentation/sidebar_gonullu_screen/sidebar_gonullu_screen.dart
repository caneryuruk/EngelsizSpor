import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_title.dart';
import 'widgets/sidebargonullu_item_widget.dart';
import 'models/sidebargonullu_item_model.dart';
import 'widgets/sidebargonullu1_item_widget.dart';
import 'models/sidebargonullu1_item_model.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/sidebar_gonullu_controller.dart';

// ignore_for_file: must_be_immutable
class SidebarGonulluScreen extends GetWidget<SidebarGonulluController> {
  const SidebarGonulluScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 96.v,
          ),
          decoration: AppDecoration.fillGray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEightyNine(),
              SizedBox(height: 28.v),
              _buildSideBarGonullu(),
              SizedBox(height: 19.v),
              _buildSideBarGonullu1(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_spor_bran_lar".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyNine() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder30,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShoppingCaterg,
            height: 27.v,
            width: 26.h,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 11.v,
            ),
          ),
          Expanded(
            child: Container(
              width: 292.h,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 9.v,
              ),
              child: Text(
                "msg_l_tfen_deneyimlemek".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumInter15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSideBarGonullu() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 29.h,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 85.v,
            crossAxisCount: 3,
            mainAxisSpacing: 43.h,
            crossAxisSpacing: 43.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .sidebarGonulluModelObj.value.sidebargonulluItemList.value.length,
          itemBuilder: (context, index) {
            SidebargonulluItemModel model = controller.sidebarGonulluModelObj
                .value.sidebargonulluItemList.value[index];
            return SidebargonulluItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSideBarGonullu1() {
    return SizedBox(
      height: 88.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(
            left: 15.h,
            right: 29.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 41.h,
            );
          },
          itemCount: controller.sidebarGonulluModelObj.value
              .sidebargonullu1ItemList.value.length,
          itemBuilder: (context, index) {
            Sidebargonullu1ItemModel model = controller.sidebarGonulluModelObj
                .value.sidebargonullu1ItemList.value[index];
            return Sidebargonullu1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
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
}
