import 'package:auth_screen/pages/login_page.dart';
import 'package:auth_screen/resources/colors.dart';
import 'package:auth_screen/resources/dimens.dart';
import 'package:auth_screen/resources/strings.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/perosn.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: BAKING_LESSON,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: TITLE_TEXT_SIZE,
                        ),
                      ),
                      TextSpan(
                        text: MASTER_THE_ART_OF_BAKING,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: SUBTITLE_TEXT_SIZE),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: MARGIN_LARGE),
                      padding: EdgeInsets.symmetric(
                        horizontal: MARGIN_LARGE,
                        vertical: MARGIN_MEDIUM_2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          MARGIN_LARGE,
                        ),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "START LEARNING",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: MARGIN_CARD_MEDIUM_2,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
