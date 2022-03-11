import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui/constants.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/backward.svg", height: 11),
                  SvgPicture.asset("assets/icons/menu.svg", height: 11),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.all(5),
                height: 305,
                width: 305,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondaryColor,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_1_big.png"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        TextSpan(
                          text: "With red tomato",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                          ),
                        ),
                      ]
                    )
                  ),
                  Text(
                    "\$20",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It is not simply random text. It has roots in a piece of alassical Latin literature form 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur. from a lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source."
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(27)
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Add to bag",
                            style: Theme.of(context).textTheme.button!.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 30),
                          SvgPicture.asset("assets/icons/forward.svg", height: 11),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor.withOpacity(0.4),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: kPrimaryColor
                            ),
                            child: SvgPicture.asset("assets/icons/bag.svg"),
                          )
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style: Theme.of(context).textTheme.button!.copyWith(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ),
                        )
                      ]
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}