import 'package:body_care_home/core/core.dart';
import 'package:body_care_home/src/home/home.dart';
import 'package:body_care_home/src/home/views/home_screen.dart';
import 'package:body_care_home/src/pages/sign_up_screen.dart';
import 'package:body_care_home/src/profile/profile_screen.dart';
import 'package:body_care_home/src/reserve/reserve_screen.dart';
import 'package:body_care_home/src/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.home:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
        break;
      case ScreenNames.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
        break;
      case ScreenNames.reserveScreen:
        return MaterialPageRoute(
          builder: (context) => ReserveScreen(),
        );
        break;
      case ScreenNames.profileScreen:
        return MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        );
        break;
      case ScreenNames.settingScreen:
        return MaterialPageRoute(
          builder: (context) => SettingScreen(),
        );
        break;
       case ScreenNames.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
    }
  }
}
