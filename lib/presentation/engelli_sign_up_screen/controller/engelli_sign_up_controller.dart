import '../../../core/app_export.dart';
import '../models/engelli_sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EngelliSignUpScreen.
///
/// This class manages the state of the EngelliSignUpScreen, including the
/// current engelliSignUpModelObj
class EngelliSignUpController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  TextEditingController inputController4 = TextEditingController();

  Rx<EngelliSignUpModel> engelliSignUpModelObj = EngelliSignUpModel().obs;

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
    for (var element in engelliSignUpModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    engelliSignUpModelObj.value.dropdownItemList.refresh();
  }
}
