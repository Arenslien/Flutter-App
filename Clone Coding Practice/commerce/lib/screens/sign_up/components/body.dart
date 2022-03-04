import 'package:commerce/components/social_login_card.dart';
import 'package:commerce/constants.dart';
import 'package:commerce/screens/sign_up/components/sign_up_form.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "Register Account",
              style: headingStyle
            ),
            Text(
              "Complete your details or continue\nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialLoginCard(icon: "assets/icons/google-icon.svg", press: () {}),
                SocialLoginCard(icon: "assets/icons/facebook-2.svg", press: () {}),
                SocialLoginCard(icon: "assets/icons/twitter.svg", press: () {}),              
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              "By continuing your confirm that you agree\nwith our Term and CCondition",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

