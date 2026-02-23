import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:event_hub_app/core/widgets/custom_button.dart';
import 'package:event_hub_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(title: '', rightIcons: []),
            Padding(
              padding: const EdgeInsets.only(left: 29, top: 0),
              child: Text("Resset Password", style: Style.black24W400),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29.0, top: 12),
              child: SizedBox(
                width: 244,
                height: 50,
                child: Text(
                  "Please enter your email address to request a password reset",
                  style: Style.black15W400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26.0),
              child: CustomTextField(
                hint: 'abc@email.com',
                icon: AppImage.mail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 56, right: 56),
              child: CustomButton(text: 'SEND'),
            ),
          ],
        ),
      ),
    );
  }
}
