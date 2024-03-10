import '../../../core/app_export.dart';
import '../models/ifre_de_i_tir_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IfreDeITirScreen.
///
/// This class manages the state of the IfreDeITirScreen, including the
/// current ifreDeITirModelObj
class IfreDeITirController extends GetxController {
  TextEditingController yeniparolaController = TextEditingController();

  TextEditingController fifteenController = TextEditingController();

  Rx<IfreDeITirModel> ifreDeITirModelObj = IfreDeITirModel().obs;

  @override
  void onClose() {
    super.onClose();
    yeniparolaController.dispose();
    fifteenController.dispose();
  }
}
