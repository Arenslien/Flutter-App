import 'package:covid_19_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      title: "Covid 19",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodySmall: TextStyle(color: kBodyTextColor)
        )
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
  String country = "Indonesia";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 40),
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF3383CD),
                    Color(0xFF11249F),
          
                  ]
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/virus.png") 
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/menu.svg")
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Stack(
                        children: [
                          SvgPicture.asset("assets/icons/Drcorona.svg", width: 230, fit: BoxFit.fitWidth, alignment: Alignment.topCenter),
                          Positioned(
                            top: 20,
                            left: 150,
                            child: Text(
                              "All you need \nis stay at home.",
                              style: kHeadingSmallTextStyle.copyWith(
                                color: Colors.white,
                              )
                            ),
                          ),
                          Container(),
                        ] 
                      )
                    ),
                  ],
                )
              ),
          
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: const Color(0xFFE5E5E5))
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                const SizedBox(width: 20),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: const SizedBox(),
                    value: country,
                    items: ["Indonesia", "Bangladesh", "United States", "Japan"]
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value)
                          );
                        }).toList(), 
                    onChanged: (val) {
                      setState(() {
                        country = val.toString();
                      });
                    }
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Case Update\n",
                        style: kTitleTextStyle,
                      ),
                      TextSpan(
                        text: "Newest update March 28",
                        style: TextStyle(color: kTextLightColor),
                      )
                    ]
                  ),
                ),
                const Spacer(),
                const Text(
                  "See details",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Counter(color: kInfectedColor, number: 1046, title: "Infected"),
                Counter(color: kDeathColor, number: 87, title: "Deaths"),
                Counter(color: kRecoverColor, number: 46, title: "Recovered"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final Color color;
  final int number;
  final String title;
  const Counter({
    Key? key, required this.color, required this.number, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: color,
                width: 2,
              )
            )
            ,
          )
        ),
        Text(
          number.toString(),
          style: TextStyle(
            color: color,
            fontSize: 40
          ),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }}