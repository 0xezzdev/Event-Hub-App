import 'package:flutter/material.dart';

class OnboardingPhotos extends StatelessWidget {
  const OnboardingPhotos({
    super.key, required this.index, required this.items,
  });
  final int index;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 49.0, left: 16),
      child: Image.asset(
        items[index]['photo'],
        height: 475,
      ),
    );
  }
}