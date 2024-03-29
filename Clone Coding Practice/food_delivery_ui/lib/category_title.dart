import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTitle({Key? key, required this.title, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button!.copyWith(
              fontWeight: FontWeight.bold,
              color: active ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
