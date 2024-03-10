import '../../../core/app_export.dart';
import '../models/profil_d_zenleme_gonullu_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilDZenlemeGonulluScreen.
///
/// This class manages the state of the ProfilDZenlemeGonulluScreen, including the
/// current profilDZenlemeGonulluModelObj
class ProfilDZenlemeGonulluController extends GetxController {
  TextEditingController labelController = TextEditingController();

  TextEditingController labelController1 = TextEditingController();

  TextEditingController labelController2 = TextEditingController();

  TextEditingController labelController3 = TextEditingController();

  TextEditingController labelController4 = TextEditingController();

  Rx<ProfilDZenlemeGonulluModel> profilDZenlemeGonulluModelObj =
      ProfilDZenlemeGonulluModel().obs;

  @override
  void onClose() {
    super.onClose();
    labelController.dispose();
    labelController1.dispose();
    labelController2.dispose();
    labelController3.dispose();
    labelController4.dispose();
  }
}
