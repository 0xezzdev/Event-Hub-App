import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:event_hub_app/core/widgets/custom_button.dart';
import 'package:event_hub_app/features/explore_events/explore_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  bool isUpcoming = true;
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
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
              child: Container(
                width: double.infinity,
                height: 45.055419921875,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => isUpcoming = true),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isUpcoming
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: isUpcoming
                                ? [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                    ),
                                  ]
                                : [],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "UPCOMING",
                            style: TextStyle(
                              color: isUpcoming
                                  ? Colors.blue[900]
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => isUpcoming = false),
                        child: Container(
                          decoration: BoxDecoration(
                            color: !isUpcoming
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: !isUpcoming
                                ? [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                    ),
                                  ]
                                : [],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "PAST EVENTS",
                            style: TextStyle(
                              color: !isUpcoming
                                  ? Colors.blue[900]
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 98.0),
              child: SvgPicture.asset(AppImage.eventEmpty),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31.0),
              child: Text(
                "No Upcoming Event",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: Fonts.airbnb,
                  color: Color(0xff344B67),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 7),
              child: Text(
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet, consectetur ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: Fonts.airbnb,
                  color: Color(0xff344B67),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52.0, right: 52.0, top: 180),
              child: CustomButton(text: "Explore Events", onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExploreEvents()))),
            ),
          ],
        ),
      ),
    );
  }
}
