import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/gonulluanasayfasi_item_widget.dart';
import 'models/gonulluanasayfasi_item_model.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/gonullu_ana_sayfasi_controller.dart';

class GonulluAnaSayfasiScreen extends GetWidget<GonulluAnaSayfasiController> {
  const GonulluAnaSayfasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 164.h,
                                            child: Text("msg_merhaba_brahim".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .titleLargeInter))),
                                    SizedBox(height: 42.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_ba_vurular_m".tr,
                                            style: theme
                                                .textTheme.headlineMedium)),
                                    SizedBox(height: 28.v),
                                    _buildGonulluAnaSayfasi(),
                                    SizedBox(height: 29.v),
                                    _buildVector()
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgLockBlack90001,
          margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 25.v),
          onTap: () {
            onTapLock();
          })
    ], styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildGonulluAnaSayfasi() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 18.v);
            },
            itemCount: controller.gonulluAnaSayfasiModelObj.value
                .gonulluanasayfasiItemList.value.length,
            itemBuilder: (context, index) {
              GonulluanasayfasiItemModel model = controller
                  .gonulluAnaSayfasiModelObj
                  .value
                  .gonulluanasayfasiItemList
                  .value[index];
              return GonulluanasayfasiItemWidget(model, onTapChat: () {
                onTapChat();
              });
            })));
  }

  /// Section Widget
  Widget _buildVector() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                  onTap: () {
                    onTapVector();
                  },
                  child: Container(
                      height: 115.v,
                      width: 119.h,
                      margin: EdgeInsets.only(top: 10.v, bottom: 1.v),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVector7917,
                            height: 105.v,
                            width: 98.h,
                            alignment: Alignment.topLeft),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                width: 45.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.h, vertical: 11.v),
                                decoration: AppDecoration.fillGray20001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder22),
                                child: Text("lbl_150".tr,
                                    style: CustomTextStyles
                                        .titleMediumBlack90001)))
                      ]))),
              GestureDetector(
                  onTap: () {
                    onTapTwentyThree();
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 18.h),
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 6.v),
                            Container(
                                width: 130.h,
                                margin: EdgeInsets.only(left: 19.h),
                                child: Text("msg_200_puanda_s_rpriz".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallBlack90001
                                        .copyWith(height: 1.50))),
                            SizedBox(height: 3.v),
                            SizedBox(
                                width: 189.h,
                                child: Divider(
                                    color: theme.colorScheme.primary,
                                    indent: 1.h)),
                            SizedBox(height: 12.v),
                            Container(
                                width: 130.h,
                                margin: EdgeInsets.only(left: 19.h),
                                child: Text("msg_250_puanda_s_rpriz".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallBlack90001
                                        .copyWith(height: 1.50)))
                          ])))
            ])));
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

  /// Navigates to the gonulluProfiliScreen when the action is triggered.
  onTapLock() {
    Get.toNamed(
      AppRoutes.gonulluProfiliScreen,
    );
  }

  /// Navigates to the engeelliProfilGRNtSScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.engeelliProfilGRNtSScreen,
    );
  }

  /// Navigates to the puanSayfasScreen when the action is triggered.
  onTapVector() {
    Get.toNamed(
      AppRoutes.puanSayfasScreen,
    );
  }

  /// Navigates to the puanSayfasScreen when the action is triggered.
  onTapTwentyThree() {
    Get.toNamed(
      AppRoutes.puanSayfasScreen,
    );
  }
}
