import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Login/Roasted/RoastedSignUp.dart';

class RoastedHome extends StatefulWidget {
  @override
  _RoastedHomeState createState() => _RoastedHomeState();
}

class _RoastedHomeState extends State<RoastedHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42.0),
        child: ListView(
          children: [
            Container(
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 7,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("images/pic1.png"),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Username",
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xff735744)),
                              ),
                              TextFormField(
                                decoration: InputDecoration(),
                              )
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                  color: Color(0xff735744),
                                  fontSize: 16.0,
                                ),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(),
                              )
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              elevation: 12.0,
                              minWidth: size.width * 0.60,
                              height: size.height * 0.05,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0)),
                              color: Color(0xff735744),
                              onPressed: () {},
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 22.0,
                                    letterSpacing: 3.75,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 36.0),
                              child: Wrap(
                                children: [
                                  Text(
                                    "Don't have an account? ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RoastedSignUp()));
                                    },
                                    child: Text(
                                      " Sign Up Now ",
                                      style: TextStyle(
                                          color: Color(0xff856D5C),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17.5),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
