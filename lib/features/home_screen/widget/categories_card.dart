import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesCard extends StatelessWidget {
  final String txt;
  final String? iconData;
  final Color color;

  const CategoriesCard({
    super.key,
    required this.txt,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 11.28),
      height: 39.06215286254883,
      width: 106.7698745727539,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20.96)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData != null ? SvgPicture.asset(iconData!) : Icon(Icons.draw_rounded, color: AppColors.mainWhite,),
            Padding(
              padding: const EdgeInsets.only(left: 8.31),
              child: Text(txt, style: Style.buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
