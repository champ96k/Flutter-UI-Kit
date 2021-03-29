import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffFA568F), Color(0xffFDA78F)],
                ),
              ),
            ),
            clipper: Clip(),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
                ),
              ),
              Text(
                "Flutter Dev",
                style: TextStyle(
                    fontSize: 26,
                    // color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Programmer",
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "39",
                        style: TextStyle(
                            fontSize: 26,
                            // color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Projects",
                        style: TextStyle(
                          fontSize: 20,
                          // color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "21K",
                        style: TextStyle(
                            fontSize: 26,
                            // color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          fontSize: 20,
                          // color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "64",
                        style: TextStyle(
                            fontSize: 26,
                            // color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Repository",
                        style: TextStyle(
                          fontSize: 20,
                          // color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    colors: [Color(0xffFA568F), Color(0xffFDA78F)],
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, 100);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
