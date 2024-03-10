import '../../../core/app_export.dart';
import '../models/dm_engelli_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DmEngelliPage.
///
/// This class manages the state of the DmEngelliPage, including the
/// current dmEngelliModelObj
class DmEngelliController extends GetxController {
  DmEngelliController(this.dmEngelliModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<DmEngelliModel> dmEngelliModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
