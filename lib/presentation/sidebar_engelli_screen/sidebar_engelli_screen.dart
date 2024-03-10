import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_title.dart';
import 'widgets/sidebarengelli_item_widget.dart';
import 'models/sidebarengelli_item_model.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/sidebar_engelli_controller.dart';

// ignore_for_file: must_be_immutable
class SidebarEngelliScreen extends GetWidget<SidebarEngelliController> {
  const SidebarEngelliScreen({Key? key})
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
              _buildSeventyThree(),
              SizedBox(height: 28.v),
              _buildSideBarEngelli(),
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
  Widget _buildSeventyThree() {
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
  Widget _buildSideBarEngelli() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 29.h,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 81.v,
            crossAxisCount: 3,
            mainAxisSpacing: 43.h,
            crossAxisSpacing: 43.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .sidebarEngelliModelObj.value.sidebarengelliItemList.value.length,
          itemBuilder: (context, index) {
            SidebarengelliItemModel model = controller.sidebarEngelliModelObj
                .value.sidebarengelliItemList.value[index];
            return SidebarengelliItemWidget(
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
