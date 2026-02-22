import 'package:event_hub_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.pageCount, required this.index, required this.items,
  });

  final int pageCount;
  final int index;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 288,
      decoration: BoxDecoration(
        color: pageCount != 2 ? AppColors.onboardingContainer:AppColors.secoundaryOnboardingContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
              left: 36,
              right: 44,
            ),
            child: Text(
              items[index]['title'],
              style: TextStyle(
                fontSize: 22,
                color: AppColors.mainWhite,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 36,
              right: 44,
            ),
            child: Text(
              items[index]['subtitle'],
              style: TextStyle(
                fontSize: 15,
                color: AppColors.mainWhite,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

