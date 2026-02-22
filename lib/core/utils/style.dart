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
  static TextStyle gray16W500 = TextStyle(
    color: AppColors.customGray,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle auth15W400 = TextStyle(
    color: AppColors.textAuth,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle hint = TextStyle(color: AppColors.hintColor, fontSize: 14);

  static TextStyle buttonText = TextStyle(color: AppColors.mainWhite,fontSize: 16);
}
