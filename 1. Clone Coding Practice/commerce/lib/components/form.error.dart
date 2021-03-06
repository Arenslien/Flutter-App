import 'dart:collection';

import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key, required this.errors,
  }) : super(key: key);
  final HashSet<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors.elementAt(index)))
    );
  }

  Row formErrorText({required String error}) {
    return Row(
    children: [
      SvgPicture.asset(
        "assets/icons/Error.svg",
        height: getProportionateScreenHeight(20),
        width: getProportionateScreenWidth(20), 
      ),
      SizedBox(width: getProportionateScreenWidth(10)),
      Text(
        error
      ),
    ],
  );
  }
}