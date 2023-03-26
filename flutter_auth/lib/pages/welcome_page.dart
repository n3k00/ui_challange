import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/login_page.dart';
import 'package:flutter_auth/pages/singup_page.dart';
import 'package:flutter_auth/resources/colors.dart';
import 'package:flutter_auth/resources/strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/dimens.dart';
import '../viewitems/background_view_item.dart';
import '../widgets/reounded_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundViewItem(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                WELCOME_TO_EDU,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: LOGIN,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: SIGN_UP,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    ),
                  );
                },
                btnColor: kPrimaryLightColor,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
