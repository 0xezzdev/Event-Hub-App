import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21.58, left: 24, right: 24),
      child: Row(
        children: [
          Text(title, style: Style.homeTitele20W500),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text("See All", style: Style.gray16W500),
                const SizedBox(width: 5),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Color(0xff747688),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

