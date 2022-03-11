import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui/category_title.dart';
import 'package:food_delivery_ui/constants.dart';
import 'package:food_delivery_ui/details_screen.dart';
import 'package:food_delivery_ui/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor
          ),
          child: SvgPicture.asset("assets/icons/plus.svg")
          ,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Align(
                child: SvgPicture.asset("assets/icons/menu.svg"),
                alignment: Alignment.topRight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Simple way to find \nTasty food",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CategoryTitle(title: "All", active: true),
                  CategoryTitle(title: "Italian"),
                  CategoryTitle(title: "Asian"),
                  CategoryTitle(title: "Chinese"),
                  CategoryTitle(title: "Burgers"),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorderColor),
              ),
              child: SvgPicture.asset("assets/icons/search.svg")
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                    title: "Vegan salad bowl", 
                    image: "assets/images/image_1.png", 
                    ingredient: "red tomato",
                    price: 20,
                    calories: 420,
                    description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It is not simply random text. It has roots in a piece of alassical Latin",
                    onTap: () {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) {
                          return const DetailsScreen();
                        })
                      );
                    },
                  ),
                  FoodCard(
                    title: "Vegan salad bowl",
                    image: "assets/images/image_2.png",
                    ingredient: "red tomato",
                    price: 20,
                    calories: 420,
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It is not simply random text. It has roots in a piece of alassical Latin",
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}