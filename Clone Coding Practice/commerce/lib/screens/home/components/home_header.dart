import 'package:commerce/screens/home/components/icon_btn_with_counter.dart';
import 'package:commerce/screens/home/components/search_field.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
              svgSrc: "assets/icons/Cart Icon.svg",
              press: () {},
              numOfItemes: 0),
          IconBtnWithCounter(
              svgSrc: "assets/icons/Bell.svg", press: () {}, numOfItemes: 3),
        ],
      ),
    );
  }
}
