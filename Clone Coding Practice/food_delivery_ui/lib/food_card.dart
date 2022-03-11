import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String image;
  final String ingredient;
  final int price;
  final int calories;
  final String description;
  final Function()? onTap;
  const FoodCard({
    Key? key,
    required this.title,
    required this.ingredient,
    required this.image,
    required this.price,
    required this.description,
    required this.calories,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.only(
            left: 20,
          ),
          height: 400,
          width: 270,
          child: Stack(
            children: [
              // Big light Background
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(0.06),
                  ),
                ),
              ),
              // Rounded background
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.15),
                  ),
                ),
              ),
              // Food Image
              Positioned(
                top: 0,
                left: -50,
                child: Container(
                  height: 184,
                  width: 276,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(image),
                  )),
                ),
              ),
              // Price
              Positioned(
                right: 20,
                top: 80,
                child: Text(
                  "\$$price",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: kPrimaryColor),
                ),
              ),
              Positioned(
                  top: 201,
                  left: 40,
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 210,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text("With $ingredient",
                            style: TextStyle(
                              color: kTextColor.withOpacity(0.4),
                            )),
                        const SizedBox(height: 16),
                        Text(
                          description,
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.65),
                          ),
                          maxLines: 3,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "${calories}kcal",
                        ),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
