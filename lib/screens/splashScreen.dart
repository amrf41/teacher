import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login.dart';
import 'package:login_signup_ui_starter/theme.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
            ),
            Positioned(
              top: 200.0,
              left: 100.0,
              right: 100.0,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      "assets/icons/1.png",
                      height: 100.0,
                      width: 100.0,
                      color: Colors.greenAccent[700],
                    ),
                  ),
                  Text("E-Teach", style: titleText),
                ],
              ),
            ),
            Positioned(
              bottom: 170.0,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: [
                  Text("Welcome", style: titleText),
                  SizedBox(height: 20.0),
                  Text(
                    "Check your student, and apsent in no time on the go!",
                    style: subTitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 130,
              left: 100.0,
              right: 100.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LogInScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: kPrimaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "GET STARTED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
