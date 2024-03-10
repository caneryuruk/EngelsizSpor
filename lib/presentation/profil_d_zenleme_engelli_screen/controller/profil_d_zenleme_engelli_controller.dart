import '../../../core/app_export.dart';
import '../models/profil_d_zenleme_engelli_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilDZenlemeEngelliScreen.
///
/// This class manages the state of the ProfilDZenlemeEngelliScreen, including the
/// current profilDZenlemeEngelliModelObj
class ProfilDZenlemeEngelliController extends GetxController {
  TextEditingController labelController = TextEditingController();

  TextEditingController labelController1 = TextEditingController();

  TextEditingController labelController2 = TextEditingController();

  TextEditingController labelController3 = TextEditingController();

  Rx<ProfilDZenlemeEngelliModel> profilDZenlemeEngelliModelObj =
      ProfilDZenlemeEngelliModel().obs;

  @override
  void onClose() {
    super.onClose();
    labelController.dispose();
    labelController1.dispose();
    labelController2.dispose();
    labelController3.dispose();
  }
}
