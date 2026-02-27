import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/images.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/core/widgets/custom_button.dart';
import 'package:event_hub_app/core/widgets/custom_text_field.dart';
import 'package:event_hub_app/core/widgets/social_button.dart';
import 'package:event_hub_app/features/forgot_password/forgot_password.dart';
import 'package:event_hub_app/features/home_screen/widget/zoom_drawer_wrapper.dart';
import 'package:event_hub_app/features/signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _controller = ValueNotifier<bool>(false);
  bool _checked = false;

  // ...
  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          _checked = true;
        } else {
          _checked = false;
        }
      });
    });
  }

  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85, left: 125, right: 98),
            child: SvgPicture.asset(AppImage.secIcon),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29, top: 30),
            child: Text("Sign in", style: Style.black24W400),
          ),
          CustomTextField(hint: 'abc@email.com', icon: AppImage.mail),
          CustomTextField(
            hint: 'Your Password',
            icon: AppImage.password,
            suffixIcon: IconButton(
              onPressed: () {
                isHidden = !isHidden;
                setState(() {});
              },
              icon: isHidden
                  ? SvgPicture.asset(AppImage.hidden)
                  : Icon(Icons.visibility, color: AppColors.iconsColor),
            ),
            obscureText: isHidden,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 30, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AdvancedSwitch(
                      height: 19,
                      width: 32.3,
                      controller: _controller,
                      activeColor: AppColors.buttonColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.7),
                      child: Text("Remember Me", style: Style.black14W400),
                    ),
                  ],
                ),
                TextButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPassword()));
                }, child: Text("Forgot Password?", style: Style.black14W400),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 56, right: 56),
            child: CustomButton(text: 'SIGN IN',onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ZoomDrawerWrapper()));
            },),
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
                Text("Don’t have an account?", style: Style.black15W400),
                TextButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign up", style: Style.auth15W400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
