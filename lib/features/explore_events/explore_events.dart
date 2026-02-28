import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:event_hub_app/features/home_screen/model/event_model.dart';
import 'package:event_hub_app/features/search_screen/widget/search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreEvents extends StatefulWidget {
  const ExploreEvents({super.key});

  @override
  State<ExploreEvents> createState() => _ExploreEventsState();
}

class _ExploreEventsState extends State<ExploreEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
              title: 'Events',
              rightIcons: [
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppImage.search,
                    color: AppColors.mainBlack,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    SearchCard(image: EventModel().events[index]['eventImage'], date: EventModel().events[index]['date'], title: EventModel().events[index]['eventTitle'],),
                itemCount: EventModel().events.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
