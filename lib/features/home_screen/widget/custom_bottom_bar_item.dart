import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottombarItem extends StatelessWidget {
  const CustomBottombarItem({
    super.key,
    required this.title,
    required this.icon, this.onTapItem,
  });
  final String title;
  final String icon;
  final Function()? onTapItem;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapItem,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            color: title == 'Explore' ? AppColors.explore : AppColors.explore.withValues(alpha: 0.15),
          ),
          Text(
            title,
            style: title == 'Explore'
                ? Style.exploreText12W400
                : Style.gray14W400ar,
          ),
        ],
      ),
    );
  }
}
