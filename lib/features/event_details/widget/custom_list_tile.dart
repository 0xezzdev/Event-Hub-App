import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.icon, required this.title, required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.mainBlack,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: Fonts.airbnb,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: AppColors.customGray,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: Fonts.airbnb,
        ),
      ),
      leading:Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.onboardingContainer.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: AppColors.onboardingContainer,
        ),
      ),
      
    );
  }
}
