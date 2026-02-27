import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/features/home_screen/widget/menu_item.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.28, left: 24.94),
              child: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/users/me.jpeg'),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.44, left: 26),
              child: Text("Ezzeldeen", style: Style.black19W500),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 48.28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuItem(
                    icon: AppImage.myProfile,
                    title: 'My Profile',
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.messageMenu,
                      title: 'Massage',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.calender,
                      title: 'Calender',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.bookmark,
                      title: 'Bookmark',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.contact,
                      title: 'Contact Us',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.setting,
                      title: 'Settings',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.help,
                      title: 'Helps & FAQs',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: MenuItem(
                      icon: AppImage.logout,
                      title: 'Sign Out',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
