import 'package:commerce/screens/home/components/discount_banner.dart';
import 'package:commerce/screens/home/components/home_header.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}


class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Row(
      children: [
        ...List.generate(categories.length, (index) => CategoryCard(press: () {}, icon: categories[index]["icon"], text: categories[index]["text"]))
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.press,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final GestureTapCallback press;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
        child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFECDF),
                ),
                child: SvgPicture.asset(icon),
              )
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        )
      ),
    );
  }
}