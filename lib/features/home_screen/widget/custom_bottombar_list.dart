import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/features/home_screen/widget/custom_bottom_bar_item.dart';
import 'package:event_hub_app/features/my_profile/my_profile.dart';
import 'package:flutter/material.dart';

class CustomBottombarList extends StatelessWidget {
  const CustomBottombarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottombarItem(title: 'Explore', icon: AppImage.explore),
          CustomBottombarItem(title: 'Events', icon: AppImage.eventsBar),
          SizedBox(width: 50),
          CustomBottombarItem(title: 'Map', icon: AppImage.map),
          CustomBottombarItem(
            title: 'Profile',
            icon: AppImage.profileBar,
            onTapItem: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const MyProfile())),
          ),
        ],
      ),
    );
  }
}
