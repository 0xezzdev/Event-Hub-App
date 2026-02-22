import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.obscureText = false,
    required this.hint,
    required this.icon,
    this.suffixIcon,
  });

  final bool obscureText;
  final String hint;
  final String icon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 21, right: 30),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hint: Text(hint, style: Style.hint),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 17, bottom: 17, left: 15),
              child: SvgPicture.asset(icon),
            ),
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.inputTextBorder),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.inputTextBorder),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            errorBorder: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
