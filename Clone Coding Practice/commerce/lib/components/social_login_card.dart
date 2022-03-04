import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginCard extends StatelessWidget {
  const SocialLoginCard({
    Key? key, required this.icon, required this.press,
  }) : super(key: key);
  final String icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Gesture Detector을 통해 평범한 위젯을 버튼처럼 만들 수 있음
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
