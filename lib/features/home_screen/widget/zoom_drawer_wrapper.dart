import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/features/home_screen/home.dart';
import 'package:event_hub_app/features/home_screen/widget/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZoomDrawerWrapper extends StatefulWidget {
  const ZoomDrawerWrapper({super.key});

  @override
  State<ZoomDrawerWrapper> createState() => _ZoomDrawerWrapperState();
}

class _ZoomDrawerWrapperState extends State<ZoomDrawerWrapper> {
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      menuScreen: MenuScreen(),
      mainScreen: Home(controller: _drawerController),
      borderRadius: 40.0,
      showShadow: false,
      angle: 0.0,
      mainScreenScale: 0.2,
      menuBackgroundColor: AppColors.secWhite,
      drawerShadowsBackgroundColor: Colors.grey[300]!,
      slideWidth: MediaQuery.of(context).size.width * 0.7,
    );
  }
}