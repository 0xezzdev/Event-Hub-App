import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key, required this.icon, required this.text,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shadowColor: AppColors.customGray,
          elevation: 2,
          backgroundColor: AppColors.mainWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Adjust the radius
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(icon),
            Text(text,style: Style.black16W400,)
          ],
        ),
      ),
    );
  }
}
