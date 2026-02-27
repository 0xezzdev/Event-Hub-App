import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class Style {
  static TextStyle black24W400 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.airbnb,
  );

  static TextStyle white12W400o70 = TextStyle(
    color: AppColors.mainWhite.withValues(alpha: 0.7),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle white13W500 = TextStyle(
    color: AppColors.mainWhite,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static TextStyle black14W400 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle black15W400 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle black16W400 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle black19W500 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 19,
    fontWeight: FontWeight.w500,
  );
  static TextStyle gray16W500 = TextStyle(
    color: AppColors.customGray,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle gray13W400ar = TextStyle(
    color: AppColors.customGray,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.airbnb,
  );
  static TextStyle gray14W400ar = TextStyle(
    color: AppColors.explore.withValues(alpha: 0.15),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.airbnb,
  );

  static TextStyle auth15W400 = TextStyle(
    color: AppColors.textAuth,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle homeTitele20W500 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle black18W400 = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: Fonts.airbnb,
  );
  static TextStyle eventDetails12W500 = TextStyle(
    color: AppColors.eventDetails,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: Fonts.airbnb,
  );
  static TextStyle hint = TextStyle(color: AppColors.hintColor, fontSize: 14);

  static TextStyle buttonText = TextStyle(
    color: AppColors.mainWhite,
    fontSize: 16,
  );
  static TextStyle search = TextStyle(
    fontSize: 20.33,
    color: AppColors.searchBar,
    fontWeight: FontWeight.w400,
  );
  static TextStyle adText18W500 = TextStyle(
    color: AppColors.adTitle,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: Fonts.airbnb,
  );
  static TextStyle adContent13W400 = TextStyle(
    color: AppColors.adText,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.airbnb,
  );
  static TextStyle exploreText12W400 = TextStyle(
    color: AppColors.explore,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.airbnb,
  );
}
