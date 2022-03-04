import 'package:commerce/constants.dart';
import 'package:commerce/screens/otp/components/otp_form.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text(
                "We sent your code to + 1 898 860 ***",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                child: Text(
                  "Resend OTP Code", 
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onTap: () {
                  
                },
              ),
            ]
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0), 
          duration: Duration(seconds: 30), 
          builder: (context, num value, child) {
            return Text(
              "00:${value.toInt()}",
              style: TextStyle(color: kPrimaryColor)
            );
          },
          onEnd: () {
            
          },
        ),
      ],
    );
  }
}