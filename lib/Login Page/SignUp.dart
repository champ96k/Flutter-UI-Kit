import 'package:flutter/material.dart';
import 'SignIn.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Create Account,",
              style: TextStyle(fontSize: 32.0, color: Colors.black),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "Sign up to get started!",
              style: TextStyle(fontSize: 22.0, color: Colors.grey),
            ),
            SizedBox(
              height: 52.0,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(
              height: 22.0,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(
              height: 22.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(
              height: 52.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  colors: [Color(0xffFA568F), Color(0xffFDA78F)],
                ),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  colors: [Color(0xffECEFF4), Color(0xffECEFF4)],
                ),
              ),
              child: MaterialButton(
                elevation: 3.0,
                splashColor: Colors.deepPurple,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Image(
                          height: 42,
                          image: NetworkImage(
                              "http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19753.png")),
                    ),
                    Text(
                      "Connect with Facebook",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff5772A7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 52.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "I'm already a member, ",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
