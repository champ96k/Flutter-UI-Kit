import 'package:body_care_home/core/core.dart';
import 'package:body_care_home/src/home/views/home_screen.dart';
import 'package:body_care_home/src/profile/profile_screen.dart';
import 'package:body_care_home/src/reserve/reserve_screen.dart';
import 'package:body_care_home/src/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    //List of all bottom navigation screen
    HomeScreen(),
    ProfileScreen(),
    ReserveScreen(),
    SettingScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Constants.primaryBackgroundColor,
          primaryColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.grey),
              ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 0 ? Constants.selectedHome : Constants.home,
              ),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 1
                    ? Constants.selectedReserve
                    : Constants.reserve,
              ),
              label: '予約一覧',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 2
                    ? Constants.selectedProfile
                    : Constants.profile,
              ),
              label: 'プロフィール',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 3
                    ? Constants.selectedSetting
                    : Constants.setting,
              ),
              label: '設定',
            ),
          ],
          onTap: onTabTapped,
        ),
      ),
    );
  }
}
