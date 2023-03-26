import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/singup_page.dart';
import 'package:flutter_auth/resources/colors.dart';
import 'package:flutter_auth/resources/dimens.dart';
import 'package:flutter_auth/resources/strings.dart';
import 'package:flutter_auth/widgets/reounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../viewitems/alreade_have_an_account_check.dart';
import '../widgets/input_field_container.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_password_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  LOGIN,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height*0.03),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height*0.03),
                RoundedInputField(
                  hintText: YOUR_EMAIL,
                  onChanged: (value) {},
                ),
                RoundedPasswordField(onChanged: (value) {}),
                RoundedButton(text: LOGIN, press: () {}),
                SizedBox(height: size.height*0.03),
                AlreadyHaveAnAccountCheck(onPress: (){
                  debugPrint("Ok");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    ),
                  );
                },)
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
            "assets/images/main_top.png",
            width: size.width * 0.35,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/images/login_bottom.png",
            width: size.width * 0.4,
          ),
        ),
        child
      ],
    );
  }
}
