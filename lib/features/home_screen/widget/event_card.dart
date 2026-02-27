import 'dart:math';

import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.eventImage,
    required this.eventTitle,
    required this.location,
  });

  final String eventImage;
  final String eventTitle;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8,top: 10,bottom: 10,right: 8),
      color: AppColors.mainWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 255,
        width: 237,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 9),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 131,
              width: 218,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(eventImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0, left: 16),
              child: Text(eventTitle, style: Style.black18W400),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10),
              child: Row(
                children: [
                  Image.asset("assets/images/event/people.png"),
                  const SizedBox(width: 10),
                  Text("+20 Going", style: Style.eventDetails12W500),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: AppColors.customGray,
                  ),
                  SizedBox(width: 5),
                  Text(
                    location,
                    style: Style.gray13W400ar,
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
