import 'package:body_care_home/core/core.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Profile Screen",
      ),
      body: Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}
