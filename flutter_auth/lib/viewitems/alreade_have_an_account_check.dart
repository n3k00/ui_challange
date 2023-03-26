import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/strings.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function onPress;
  const AlreadyHaveAnAccountCheck({
    super.key,
    this.login = true,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? DONOT_HAVE_AN_ACCOUNT : ALREADY_HAVE_AN_ACCOUNT,
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            debugPrint("Testing one");
            onPress();
          },
          child: Text(
            login ? SIGN_UP : SING_IN,
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
