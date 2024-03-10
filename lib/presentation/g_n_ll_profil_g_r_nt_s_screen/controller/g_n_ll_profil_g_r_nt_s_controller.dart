import '../../../core/app_export.dart';
import '../models/g_n_ll_profil_g_r_nt_s_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the GNLlProfilGRNtSScreen.
///
/// This class manages the state of the GNLlProfilGRNtSScreen, including the
/// current gNLlProfilGRNtSModelObj
class GNLlProfilGRNtSController extends GetxController {
  TextEditingController thirtySevenController = TextEditingController();

  Rx<GNLlProfilGRNtSModel> gNLlProfilGRNtSModelObj = GNLlProfilGRNtSModel().obs;

  @override
  void onClose() {
    super.onClose();
    thirtySevenController.dispose();
  }
}
