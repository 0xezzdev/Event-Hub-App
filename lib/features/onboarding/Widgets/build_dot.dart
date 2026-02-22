import 'package:event_hub_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({super.key, required this.index, required this.currentPage});
  final int index;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColors.mainWhite
            : AppColors.mainWhite.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
