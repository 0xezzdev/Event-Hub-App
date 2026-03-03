import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:event_hub_app/core/widgets/custom_button.dart';
import 'package:event_hub_app/core/widgets/custom_text_field.dart';
import 'package:event_hub_app/core/widgets/social_button.dart';
import 'package:event_hub_app/features/signIn/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey();

  bool _isHiddenPass = true;
  bool _isHiddenConfirmPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(title: "", rightIcons: []),
              Padding(
                padding: const EdgeInsets.only(left: 29, top: 0),
                child: Text("Sign up", style: Style.black24W400),
              ),
              CustomTextField(
                hint: 'Full Name',
                icon: AppImage.profile,
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  }
                },
              ),
              CustomTextField(
                hint: 'abc@email.com',
                icon: AppImage.mail,
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                },
              ),
              CustomTextField(
                hint: 'Your Password',
                icon: AppImage.password,
                suffixIcon: IconButton(
                  onPressed: () {
                    _isHiddenPass = !_isHiddenPass;
                    setState(() {});
                  },
                  icon: _isHiddenPass
                      ? SvgPicture.asset(AppImage.hidden)
                      : Icon(Icons.visibility, color: AppColors.iconsColor),
                ),
                obscureText: _isHiddenPass,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }
                },
              ),
              CustomTextField(
                hint: 'Confirm password',
                icon: AppImage.password,
                suffixIcon: IconButton(
                  onPressed: () {
                    _isHiddenConfirmPass = !_isHiddenConfirmPass;
                    setState(() {});
                  },
                  icon: _isHiddenConfirmPass
                      ? SvgPicture.asset(AppImage.hidden)
                      : Icon(Icons.visibility, color: AppColors.iconsColor),
                ),
                obscureText: _isHiddenConfirmPass,
                controller: confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Confirm Password is required";
                  }
                },
              ),

              Padding(
                padding: const EdgeInsets.only(top: 36, left: 56, right: 56),
                child: CustomButton(
                  text: 'Sign up',
                  onPressed: () {
                    if (!formState.currentState!.validate()) {}
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Center(child: Text("OR", style: Style.gray16W500)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 51, right: 51),
                child: SocialButton(
                  icon: AppImage.google,
                  text: 'Login with Google',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0, left: 50, right: 50),
                child: SocialButton(
                  icon: AppImage.facebook,
                  text: 'Login with Facebook',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: Style.black15W400),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                          (Route<dynamic> route) =>
                              false, // This predicate always returns false
                        );
                      },
                      child: Text("Signin", style: Style.auth15W400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
