import '../../../core/app_export.dart';
import '../models/dm_gonullu_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DmGonulluScreen.
///
/// This class manages the state of the DmGonulluScreen, including the
/// current dmGonulluModelObj
class DmGonulluController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DmGonulluModel> dmGonulluModelObj = DmGonulluModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
