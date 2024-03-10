import '../../../core/app_export.dart';
import '../models/g_n_ll_er_sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the GNLlErSignUpScreen.
///
/// This class manages the state of the GNLlErSignUpScreen, including the
/// current gNLlErSignUpModelObj
class GNLlErSignUpController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  TextEditingController inputController4 = TextEditingController();

  Rx<GNLlErSignUpModel> gNLlErSignUpModelObj = GNLlErSignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> okudumkabulediyorum = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputController1.dispose();
    inputController2.dispose();
    inputController3.dispose();
    inputController4.dispose();
  }

  onSelected(dynamic value) {
    for (var element in gNLlErSignUpModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    gNLlErSignUpModelObj.value.dropdownItemList.refresh();
  }
}
