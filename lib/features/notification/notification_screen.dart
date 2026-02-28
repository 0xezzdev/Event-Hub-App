import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
              title: "Notifications",
              rightIcons: [
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 169.0),
              child: SvgPicture.asset(AppImage.notificationEmpty),
            ),
            Text(
              "No Notifications!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: Fonts.airbnb,
                color: Color(0xff344B67),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0,top: 7),
              child: Text(
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: Fonts.airbnb,
                  color: Color(0xff344B67),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
