import 'package:body_care_home/core/core.dart';
import 'package:body_care_home/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                    "アカウントを作成する",
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
                  "OR CREATE WITH EMAIL",
                  style: textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                  ),
                ),
                CustomTextFormFiled(
                  hintText: "Full name",
                  suffixIcon: Icon(
                    Icons.done,
                    color: Colors.green,
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
                  obscureText: true,
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Row(
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "i have read the  ",
                            style: textTheme.bodyText2.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                          Text("Privace Policy"),
                        ],
                      ),
                      Spacer(),
                      Checkbox(
                        value: true,
                        activeColor: Colors.black54,
                        onChanged: (bool newValue) {},
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenNames.home);
                  },
                  backgroundColor: Constants.primaryCyanDarkColor,
                  buttonTextColor: Colors.white,
                  buttonText: "アカウントを作成",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
