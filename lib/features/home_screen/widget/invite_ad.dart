import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class InviteAd extends StatelessWidget {
  const InviteAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 29.0, left: 24, right: 24),
      child: Container(
        height: 127,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.ad,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0, left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Invite your friends", style: Style.adText18W500),
                  Text(
                    "Get \$20 for ticket",
                    style: Style.adContent13W400,
                  ),
                  SizedBox(height: 13),
                  MaterialButton(
                    onPressed: () {},
                    color: AppColors.adButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "INVITE",
                      style: TextStyle(
                        color: AppColors.mainWhite,
                        fontSize: 12,
                        fontFamily: Fonts.airbnb,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              height: 180,
              width: 185,
              AppImage.ad,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
