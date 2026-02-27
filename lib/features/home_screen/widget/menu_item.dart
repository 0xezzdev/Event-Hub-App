import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key, required this.icon, required this.title, this.onTap,
  });

final String icon;
final String title;
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 25,
        width: 140,
        child: Row(
          children: [
            SvgPicture.asset(icon),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(title,style: Style.black16W400,),
            )
          ],
        ),
      ),
    );
  }
}