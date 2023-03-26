import 'package:flutter/material.dart';
import 'package:flutter_auth/resources/colors.dart';

import '../resources/dimens.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color btnColor, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.btnColor = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: MARGIN_CARD_MEDIUM_2),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(MARGIN_XLARGE),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: btnColor,
            padding: const EdgeInsets.symmetric(
              horizontal: BUTTON_WIDTH,
              vertical: BUTTON_HEIGHT,
            ),
          ),
          onPressed: () {
            press();
          },
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
