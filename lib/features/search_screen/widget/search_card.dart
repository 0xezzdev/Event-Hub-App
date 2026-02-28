import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/features/home_screen/model/event_model.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
    required this.image,
    required this.date,
    required this.title,
  });

  final String image;
  final String date;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0, right: 27, top: 16),
      child: Card(
        color: AppColors.mainWhite,
        child: SizedBox(
          height: 112,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  image,
                  height: 95,
                  width: 79,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: AppColors.buttonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: Fonts.airbnb,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(title, style: Style.black18W400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
