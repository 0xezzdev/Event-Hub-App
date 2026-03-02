import 'package:event_hub_app/features/event_details/event_details.dart';
import 'package:event_hub_app/features/home_screen/model/event_model.dart';
import 'package:event_hub_app/features/home_screen/widget/event_card.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 285,
      width: double.infinity,
      child: ListView.separated(
        itemCount: EventModel().events.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return EventCard(
            eventImage: EventModel().events[index]["eventImage"],
            eventTitle: EventModel().events[index]["eventTitle"],
            location: EventModel().events[index]["location"],
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => EventDetails(eventTitle: EventModel().events[index]["eventTitle"], eventOnlyDate: EventModel().events[index]["onlyDate"], eventTime: EventModel().events[index]["time"], eventLocation: EventModel().events[index]["location"], eventDate: EventModel().events[index]["date"],)));
            },
          );
        },
      ),
    );
  }
}
