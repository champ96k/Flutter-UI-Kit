import 'package:body_care_home/core/core.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Setting Screen",
      ),
      body: Center(
        child: Text("Setting Screen"),
      ),
    );
  }
}
