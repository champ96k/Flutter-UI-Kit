import 'package:body_care_home/core/core.dart';
import 'package:body_care_home/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBackButton(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "サインイン",
                  style: textTheme.headline5,
                ),
              ),
              CustomButton(
                image: Image.asset(Constants.facebookIcon),
                onPressed: () {},
                backgroundColor: Constants.facebookButtonColor,
                buttonText: "CONTINUE WITH FACEBOOK",
              ),
              CustomButton(
                image: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SvgPicture.asset(Constants.googleIcon),
                ),
                onPressed: () {},
                buttonTextColor: Colors.black54,
                buttonText: "CONTINUE WITH GOOGLE",
              ),
              Text(
                "OR LOG IN WITH EMAIL",
                style: textTheme.bodyText2.copyWith(
                  color: Colors.black54,
                ),
              ),
              CustomTextFormFiled(
                hintText: "Email address",
                suffixIcon: Icon(
                  Icons.done,
                  color: Colors.green,
                ),
              ),
              CustomTextFormFiled(
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.done,
                  color: Colors.green,
                ),
              ),
              CustomButton(
                onPressed: () {},
                backgroundColor: Constants.primaryCyanDarkColor,
                buttonTextColor: Colors.white,
                buttonText: "ログイン",
              ),
              Text("Forgot Password?"),
              Wrap(
                children: [
                  Text(
                    "ALREADY HAVE AN ACCOUNT?",
                    style: textTheme.bodyText2.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ScreenNames.signUpScreen);
                    },
                    child: Text(
                      " SIGN UP",
                      style: textTheme.bodyText2.copyWith(
                        color: Constants.primaryCyanDarkColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
