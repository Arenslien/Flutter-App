import 'package:commerce/constants.dart';
import 'package:commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: getProportionateScreenWidth(16), color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}


