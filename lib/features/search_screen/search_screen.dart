import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:event_hub_app/features/home_screen/model/event_model.dart';
import 'package:event_hub_app/features/search_screen/widget/search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(title: 'Search', rightIcons: []),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        AppImage.search,
                        color: AppColors.explore,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 1,
                        height: 20,
                        decoration: BoxDecoration(color: AppColors.searchBar),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        width: 190,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hint: Text(
                                "Search...",
                                style: TextStyle(
                                  color: AppColors.mainBlack.withValues(
                                    alpha: 0.3,
                                  ),
                                  fontSize: 24.33,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.none),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 95,
                    height: 32.14,
                    decoration: BoxDecoration(
                      color: AppColors.filterButton,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppImage.filter,
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.7),
                            child: Text("Filter", style: Style.buttonText),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
