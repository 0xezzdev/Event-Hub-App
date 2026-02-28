import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/features/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
    required this.widget, this.onTapSearch,
  });

  final Home widget;
  final void Function()? onTapSearch;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.appbarContainer,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(33),
                bottomRight: Radius.circular(33),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 44.0,
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => widget.controller.toggle!(),
                        icon: SvgPicture.asset(AppImage.menu),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 1.0,
                              left: 9,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Current Location",
                                  style: Style.white12W400o70,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.mainWhite,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "New Yourk, USA",
                            style: Style.white13W500,
                          ),
                        ],
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: AppColors.mainWhite.withValues(
                            alpha: 0.1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppImage.notification),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    top: 10,
                    right: 35,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(AppImage.search),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 1,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColors.searchBar,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 0),
                            width: 190,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: TextButton(
                                style: ButtonStyle(
                                  alignment: Alignment.centerLeft,
                                ),
                                onPressed: onTapSearch,
                                child: Text(
                                  "Search...",
                                  style: Style.search,
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
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
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
                                child: Text(
                                  "Filter",
                                  style: Style.buttonText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


