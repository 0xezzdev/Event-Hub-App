import 'package:event_hub_app/features/home_screen/model/event_model.dart';
import 'package:event_hub_app/features/home_screen/widget/event_card.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 285,
      width: double.infinity,
      child: ListView.separated(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return EventCard(
            eventImage: EventModel().events[index]["eventImage"],
            eventTitle: EventModel().events[index]["eventTitle"],
            location: EventModel().events[index]["location"],
          );
        },
      ),
    );
  }
}
