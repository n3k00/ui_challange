import 'package:flutter/material.dart';

import '../resources/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget textField;
  const TextFieldContainer({super.key, required this.textField});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: textField,
    );
  }
}
