import 'package:commerce/screens/home/components/categories.dart';
import 'package:commerce/screens/home/components/discount_banner.dart';
import 'package:commerce/screens/home/components/home_header.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            Row(
              children: [
                Text("Special for you",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(15),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
