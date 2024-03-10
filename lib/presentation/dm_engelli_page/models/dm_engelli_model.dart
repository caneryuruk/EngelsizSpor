import '../../../core/app_export.dart';
import 'dmengelli_item_model.dart';

/// This class defines the variables used in the [dm_engelli_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DmEngelliModel {
  Rx<List<DmengelliItemModel>> dmengelliItemList = Rx([
    DmengelliItemModel(
        brahimYLmaz: "İbrahim Yılmaz".obs, basketbol: "Basketbol".obs),
    DmengelliItemModel(
        brahimYLmaz: "İbrahim Yılmaz".obs, basketbol: "Basketbol".obs),
    DmengelliItemModel(
        brahimYLmaz: "İbrahim Yılmaz".obs, basketbol: "Basketbol".obs),
    DmengelliItemModel(
        brahimYLmaz: "İbrahim Yılmaz".obs, basketbol: "Basketbol".obs)
  ]);
}
