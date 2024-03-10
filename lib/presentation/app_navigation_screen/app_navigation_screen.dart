import 'package:flutter/material.dart';
import 'package:engelsiz_spor/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Hoşgeldin Ekranı".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hoGeldinEkranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame 513821".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame513821Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Sign up seçme ekranı".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loginSignUpSeMeEkranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Giris-seçme-ekranı".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.girisSeMeEkranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Kayıt seçme ekranı".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kayTSeMeEkranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Engelli-Log-in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.engelliLogInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gonullu-Log-in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gonulluLogInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "10_Gönüllüer_Sign_Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gNLlErSignUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "10_Engelli_Sign_Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.engelliSignUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SMS kodu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.smsKoduScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "şifreni unuttun".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ifreniUnuttunScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Şifre değiştir".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ifreDeITirScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "dm-engelli - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dmEngelliContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "dm-gonullu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dmGonulluScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gönüllü Profil Görüntüsü".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gNLlProfilGRNtSScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gonullu-Ana-Sayfasi".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.gonulluAnaSayfasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SideBar-Engelli".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sidebarEngelliScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Engelli-Ana-Sayfasi".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.engelliAnaSayfasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Puan sayfası".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.puanSayfasScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "engeelli Profil görüntüsü".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.engeelliProfilGRNtSScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SideBar-Gonullu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sidebarGonulluScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "dm det engelli".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dmDetEngelliScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "dm det-gonullu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dmDetGonulluScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profil Düzenleme-gonullu".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profilDZenlemeGonulluScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gonullu_Profili".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gonulluProfiliScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Engelli_Profili".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.engelliProfiliScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profil Düzenleme_Engelli".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profilDZenlemeEngelliScreen),
                        ),
                      ],
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

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
