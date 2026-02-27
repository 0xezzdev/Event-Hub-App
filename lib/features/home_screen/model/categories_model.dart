import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';

class CategoriesModel {
    List<Map> categories = [
    {
      'txt': 'Sport',
      'iconData': AppImage.sport,
      'color': AppColors.categoryCard[0],
    },
    {
      'txt': 'Music',
      'iconData': AppImage.music,
      'color': AppColors.categoryCard[1],
    },
    {
      'txt': 'Food',
      'iconData': AppImage.food,
      'color': AppColors.categoryCard[2],
    },
    {
      'txt': 'Art',
      'iconData': null,
      'color': AppColors.categoryCard[3],
    },
  ];
}
