import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoastedSignUp extends StatefulWidget {
  @override
  _RoastedSignUpState createState() => _RoastedSignUpState();
}

class _RoastedSignUpState extends State<RoastedSignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42.0),
            child: Container(
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("SIGN UP",
                          style: GoogleFonts.titilliumWeb(  
                            textStyle: TextStyle(
                              fontSize: 36.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff735744),
                              letterSpacing: 0.75,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name",
                              style: TextStyle(
                                color: Color(0xff735744),
                                fontSize: 16.0,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Name",
                              style: TextStyle(
                                color: Color(0xff735744),
                                fontSize: 16.0,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Color(0xff735744),
                                fontSize: 16.0,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact Number",
                              style: TextStyle(
                                color: Color(0xff735744),
                                fontSize: 16.0,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Wrap(
                                children: [
                                  Text("I've agreed to the "),
                                  Text(
                                    "Terms and Conditon.",
                                    style: TextStyle(
                                      color: Color(0xff735744),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          MaterialButton(
                            elevation: 12.0,
                            minWidth: size.width * 0.60,
                            height: size.height * 0.05,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.0)),
                            color: Color(0xff735744),
                            onPressed: () {},
                            child: Text(
                              "register".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 22.0,
                                  letterSpacing: 3.75,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
