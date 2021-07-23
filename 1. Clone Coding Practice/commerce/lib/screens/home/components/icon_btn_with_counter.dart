import 'package:commerce/constants.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key, required this.svgSrc, required this.numOfItemes, required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfItemes;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(11)),
            height: getProportionateScreenHeight(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItemes != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportionateScreenHeight(16), 
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF4848),
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfItemes",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10), 
                      color: Colors.white,
                      height: 1,
                      fontWeight: FontWeight.w600
                    ),
                    
                  ),
                )
              ),
            )
        ],
      ),
    );
  }
}