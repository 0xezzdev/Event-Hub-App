import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/features/home_screen/widget/categories_list.dart';
import 'package:event_hub_app/features/home_screen/widget/custom_bottombar_list.dart';
import 'package:event_hub_app/features/home_screen/widget/event_list.dart';
import 'package:event_hub_app/features/home_screen/widget/home_appbar.dart';
import 'package:event_hub_app/features/home_screen/widget/invite_ad.dart';
import 'package:event_hub_app/features/home_screen/widget/section_title.dart';
import 'package:event_hub_app/features/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.controller});
  final ZoomDrawerController controller;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {},
        backgroundColor: AppColors.buttonColor,
        child: SvgPicture.asset(AppImage.addFloating),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.mainWhite,
        child: CustomBottombarList(),
      ),
      backgroundColor: AppColors.mainWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              HomeAppbar(widget: widget,onTapSearch: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen())),),
              CategoriesList(),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SectionTitle(title: 'Upcoming Events'),
                  EventList(),
                  InviteAd(),
                  SectionTitle(title: "Nearby You"),
                  EventList(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}