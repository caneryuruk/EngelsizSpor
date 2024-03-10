import 'package:engelsiz_spor/presentation/dm_engelli_page/dm_engelli_page.dart';
import 'package:engelsiz_spor/widgets/app_bar/custom_app_bar.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_leading_image.dart';
import 'package:engelsiz_spor/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/brahimylmazn_item_widget.dart';
import 'models/brahimylmazn_item_model.dart';
import 'widgets/simbrahimylmaz_item_widget.dart';
import 'models/simbrahimylmaz_item_model.dart';
import 'package:engelsiz_spor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/engelli_ana_sayfasi_controller.dart';

class EngelliAnaSayfasiScreen extends GetWidget<EngelliAnaSayfasiController> {
  const EngelliAnaSayfasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 17.h),
                              child: Column(children: [
                                Text("msg_merhaba_amil_zg_r".tr,
                                    style: CustomTextStyles.titleLargeInter),
                                SizedBox(height: 33.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_ba_vurular_m".tr,
                                        style: theme.textTheme.headlineMedium)),
                                SizedBox(height: 23.v),
                                _buildBrahimYLmazN(),
                                SizedBox(height: 31.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_g_n_ll_ler".tr,
                                        style: theme.textTheme.headlineMedium)),
                                SizedBox(height: 26.v),
                                _buildSimBrahimYLmaz()
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgTelevision,
            margin: EdgeInsets.only(left: 21.h, top: 25.v, bottom: 25.v),
            onTap: () {
              onTapTelevision();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockBlack90001,
              margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 25.v),
              onTap: () {
                onTapLock();
              })
        ]);
  }

  /// Section Widget
  Widget _buildBrahimYLmazN() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 19.v);
            },
            itemCount: controller.engelliAnaSayfasiModelObj.value
                .brahimylmaznItemList.value.length,
            itemBuilder: (context, index) {
              BrahimylmaznItemModel model = controller.engelliAnaSayfasiModelObj
                  .value.brahimylmaznItemList.value[index];
              return BrahimylmaznItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildSimBrahimYLmaz() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 19.v);
            },
            itemCount: controller.engelliAnaSayfasiModelObj.value
                .simbrahimylmazItemList.value.length,
            itemBuilder: (context, index) {
              SimbrahimylmazItemModel model = controller
                  .engelliAnaSayfasiModelObj
                  .value
                  .simbrahimylmazItemList
                  .value[index];
              return SimbrahimylmazItemWidget(model, onTapChat: () {
                onTapChat();
              });
            })));
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

  /// Navigates to the gNLlProfilGRNtSScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.gNLlProfilGRNtSScreen,
    );
  }
}
