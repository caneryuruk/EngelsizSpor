import '../../../core/app_export.dart';
import '../models/dm_det_gonullu_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DmDetGonulluScreen.
///
/// This class manages the state of the DmDetGonulluScreen, including the
/// current dmDetGonulluModelObj
class DmDetGonulluController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<DmDetGonulluModel> dmDetGonulluModelObj = DmDetGonulluModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
