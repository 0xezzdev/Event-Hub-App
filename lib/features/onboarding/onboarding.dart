import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/features/onboarding/Widgets/bottom_container.dart';
import 'package:event_hub_app/features/onboarding/Widgets/build_dot.dart';
import 'package:event_hub_app/features/onboarding/Widgets/onboarding_photos.dart';
import 'package:event_hub_app/features/onboarding/model/onboarding_items.dart';
import 'package:event_hub_app/features/signIn/sign_in.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int pageCount = 0;

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                pageCount = index;
              });
            },
            //physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  OnboardingPhotos(index: index, items: Items.onboardingItems),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomContainer(
                      pageCount: pageCount,
                      index: index,
                      items: Items.onboardingItems,
                    ),
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 36, right: 44, bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 60,
                    child: pageCount != 2
                        ? TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                                (Route<dynamic> route) =>
                                    false, // This predicate always returns false
                              );
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: AppColors.mainWhite.withValues(
                                  alpha: 0.5,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ),
                  Row(
                    children: [
                      ...List.generate(
                        3,
                        (index) =>
                            BuildDot(index: index, currentPage: pageCount),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      if (pageCount != Items.onboardingItems.length - 1) {
                        controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceIn,
                        );
                        setState(() {});
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                          (Route<dynamic> route) =>
                              false, // This predicate always returns false
                        );
                      }
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: AppColors.mainWhite),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
