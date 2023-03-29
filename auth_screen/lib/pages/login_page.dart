import 'package:auth_screen/resources/colors.dart';
import 'package:auth_screen/resources/dimens.dart';
import 'package:auth_screen/resources/strings.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    alignment: Alignment.bottomCenter),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SigninAndSignupTitleSectionView(),
                  Spacer(),
                  EmailTextField(),
                  PasswordTextField(),
                  Spacer(),
                  Row(
                    children: const [
                      AndroidButton(),
                      SizedBox(width: MARGIN_MEDIUM_3),
                      ChatButton(),
                      Spacer(),
                      NextButton(),
                    ],
                  ),
                  SizedBox(height: MARGIN_XLARGE),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SigninAndSignupTitleSectionView extends StatelessWidget {
  const SigninAndSignupTitleSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          SIGN_IN,
          style:
              Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
        ),
        Spacer(),
        Text(
          SIGN_UP,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MARGIN_MEDIUM_2,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MARGIN_MEDIUM_2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryColor,
      ),
      child: Icon(
        Icons.arrow_forward_outlined,
        color: Colors.black,
      ),
    );
  }
}

class ChatButton extends StatelessWidget {
  const ChatButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MARGIN_MEDIUM_2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: Icon(
        Icons.chat,
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}

class AndroidButton extends StatelessWidget {
  const AndroidButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        MARGIN_MEDIUM_2,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: Icon(
        Icons.android,
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        SizedBox(width: MARGIN_MEDIUM_2),
        Expanded(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: PASSWORD,
            ),
          ),
        ),
      ],
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.alternate_email,
          color: kPrimaryColor,
        ),
        SizedBox(width: MARGIN_MEDIUM_2),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: EMAIL_ADDRESS,
            ),
          ),
        ),
      ],
    );
  }
}
