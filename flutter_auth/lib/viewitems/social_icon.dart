import 'package:flutter/material.dart';
import 'package:flutter_auth/resources/colors.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String src;
  final Function onPress;

  const SocialIcon({
    super.key,
    required this.src,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kPrimaryLightColor,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          src,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}