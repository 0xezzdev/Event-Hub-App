import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ), // Adjust the radius
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 35),
            Text(text, style: Style.buttonText),
            CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.buttonCercle,
              child: Icon(
                Icons.arrow_forward,
                color: AppColors.mainWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
