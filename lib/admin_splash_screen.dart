import 'package:flutter/material.dart';

import 'app_button_widget.dart';

class AdminSplashScreen extends StatefulWidget {
  const AdminSplashScreen({Key? key}) : super(key: key);

  @override
  _AdminSplashScreenState createState() => _AdminSplashScreenState();
}

class _AdminSplashScreenState extends State<AdminSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Admin Splash Screen",
              selectionColor: Colors.black,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset("assets/logo.png", height: 200, width: 200),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 25, right: 25, bottom: 16),
              child: Text(
                "Healthcare at it's finest",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            AppButtonWidget(
              title: "Login",
              titleColor: Colors.white,
              buttonBackgroundColor: Color.fromRGBO(229, 96, 24, 1),
              buttonBorderColor: Colors.transparent,
              onPressed: () {
                Navigator.pushNamed(context, "/admin_login");
              },
            ),
            SizedBox(
              height: 24,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/admin_signup");
              },
              title: "Sign Up",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
          ]),
        ),
      ),
    );
  }
}
