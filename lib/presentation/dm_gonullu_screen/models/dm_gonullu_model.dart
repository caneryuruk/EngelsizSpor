import '../../../core/app_export.dart';
import 'dmgonullu_item_model.dart';

/// This class defines the variables used in the [dm_gonullu_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DmGonulluModel {
  Rx<List<DmgonulluItemModel>> dmgonulluItemList = Rx([
    DmgonulluItemModel(amilZgR: "Şamil Özgür".obs, basketbol: "Basketbol".obs),
    DmgonulluItemModel(amilZgR: "Şamil Özgür".obs, basketbol: "Basketbol".obs),
    DmgonulluItemModel(amilZgR: "Şamil Özgür".obs, basketbol: "Basketbol".obs),
    DmgonulluItemModel(amilZgR: "Şamil Özgür".obs, basketbol: "Basketbol".obs)
  ]);
}
