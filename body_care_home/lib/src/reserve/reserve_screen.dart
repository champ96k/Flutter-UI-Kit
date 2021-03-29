import 'package:body_care_home/core/core.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CustomAppBar(
        appBarTitle: "Reserve Screen",
      ),
      body: Center(
        child: Text("Reserve Screen"),
      ),
    );
  }
}
