import 'package:flutter/material.dart';
import 'package:flutter_auth/resources/colors.dart';
import 'package:flutter_auth/resources/dimens.dart';
import 'package:flutter_auth/resources/strings.dart';
import 'package:flutter_auth/viewitems/alreade_have_an_account_check.dart';
import 'package:flutter_auth/widgets/reounded_button.dart';
import 'package:flutter_auth/widgets/rounded_input_field.dart';
import 'package:flutter_auth/widgets/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../viewitems/or_divider.dart';
import '../viewitems/social_icon.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Background(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  SIGN_UP,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.35,
                ),
                RoundedInputField(hintText: YOUR_EMAIL, onChanged: (value) {}),
                RoundedPasswordField(onChanged: (value) {}),
                RoundedButton(text: SIGN_UP, press: () {}),
                SizedBox(
                  height: size.height * 0.03,
                ),
                AlreadyHaveAnAccountCheck(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  login: false,
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      src: "assets/icons/facebook.svg",
                      onPress: () {},
                    ),
                    SocialIcon(
                      src: "assets/icons/twitter.svg",
                      onPress: () {},
                    ),
                    SocialIcon(
                      src: "assets/icons/google-plus.svg",
                      onPress: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/signup_top.png",
            width: size.width * 0.35,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            "assets/images/main_bottom.png",
            width: size.width * 0.2,
          ),
        ),
        child
      ],
    );
  }
}
