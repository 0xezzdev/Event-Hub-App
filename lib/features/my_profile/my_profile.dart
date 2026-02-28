import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/fonts.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:event_hub_app/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(title: 'Profile', rightIcons: []),
            Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/users/me.jpeg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text("Ezzeldeen Mohamed", style: Style.black24W400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "350",
                      style: TextStyle(
                        color: AppColors.mainBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.airbnb,
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        color: Color(0xff747688),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: Fonts.airbnb,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 20,
                  width: 1,
                  color: Color(0xffE4DFDF),
                ),
                Column(
                  children: [
                    Text(
                      "346",
                      style: TextStyle(
                        color: AppColors.mainBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.airbnb,
                      ),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        color: Color(0xff747688),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: Fonts.airbnb,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21.0),
              child: Center(
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.buttonCercle),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.mainWhite,
                  child: SizedBox(
                    width: 154,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: AppColors.buttonCercle,
                          size: 14,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: AppColors.buttonCercle,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: Fonts.airbnb,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20),
              child: Text(
                'About Me',
                style: TextStyle(
                  color: Color(0xff120D26).withValues(alpha: 0.86),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: Fonts.airbnb,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 59.0, top: 8),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ",
                      style: Style.gray16W500,
                    ),
                    TextSpan(
                      text: " Read More",
                      style: Style.gray16W500.copyWith(
                        color: AppColors.buttonCercle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Interest",
                    style: TextStyle(
                      color: Color(0xff120D26).withValues(alpha: 0.86),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: Fonts.airbnb,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 0,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color(0xffeef0ff),
                    focusColor: AppColors.mainWhite,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: AppColors.buttonCercle,
                          size: 14,
                        ),
                        Text(
                          "Change",
                          style: TextStyle(
                            color: AppColors.buttonCercle,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: Fonts.airbnb,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
