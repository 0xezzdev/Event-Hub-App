import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:event_hub_app/core/widgets/custom_button.dart';
import 'package:event_hub_app/features/event_details/widget/custom_list_tile.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  final String eventTitle;
  final String eventOnlyDate;
  final String eventTime;
  final String eventLocation;
  final String eventDate;
  const EventDetails({
    super.key,
    required this.eventTitle,
    required this.eventOnlyDate,
    required this.eventTime,
    required this.eventLocation,
    required this.eventDate,
  });

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 221,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImage.eventDetails),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 48.0, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: AppColors.mainWhite,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Event Details',
                              style: TextStyle(
                                color: AppColors.mainWhite,
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.airbnb,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 21.5),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: AppColors.mainWhite.withValues(
                                    alpha: 0.3,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.bookmark,
                                  color: AppColors.mainWhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 200.0, left: 40, right: 40),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.mainWhite,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.customGray.withValues(alpha: 0.5),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Image.asset(
                        "assets/images/event/people.png",
                        height: 34.1761474609375,
                        width: 79.74400329589844,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text("+20 Going", style: Style.eventDetails15W500),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: SizedBox(
                        height: 28,
                        width: 67,
                        child: MaterialButton(
                          onPressed: () {},
                          color: AppColors.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Text("Invite", style: Style.white13W500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 20),
                    child: SizedBox(
                      height: 92,
                      width: 313,
                      child: Text(
                        widget.eventTitle,
                        style: Style.eventDetails35W400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 14),
                    child: CustomListTile(
                      icon: Icons.calendar_month,
                      title: widget.eventOnlyDate,
                      subtitle: widget.eventTime,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 14),
                    child: CustomListTile(
                      icon: Icons.location_on,
                      title: widget.eventLocation,
                      subtitle: widget.eventDate,
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30.0, left: 0),
                          height: 44,
                          width: 44,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/users/profile.png",
                              height: 44,
                              width: 44,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0, top: 30),
                              child: Text(
                                "Ashfak Sayem",
                                style: Style.black16W400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0, top: 0),
                              child: Text("Organizer", style: Style.gray13W400ar),
                            ),
                          ],
                        ),
                        Spacer(),
            
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 0,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            color: Color(0xffeef0ff),
                            focusColor: AppColors.mainWhite,
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: AppColors.buttonCercle,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.airbnb,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 10),
                    child: Text("About Event", style: Style.black19W500),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 10,
                      right: 24,
                    ),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.",
                            style: Style.gray16W500,
                          ),
                          TextSpan(
                            text: " Read More",
                            style: Style.gray16W500.copyWith(
                              color: AppColors.buttonCercle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 52.0,right: 52,bottom: 23),
            child: CustomButton(text: "Buy Ticket \$120", onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
