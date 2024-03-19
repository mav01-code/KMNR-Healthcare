import 'package:flutter/material.dart';

import 'app_button_widget.dart';

class DoctorHomepage extends StatefulWidget {
  const DoctorHomepage({Key? key}) : super(key: key);

  @override
  _DoctorHomepageState createState() => _DoctorHomepageState();
}

class _DoctorHomepageState extends State<DoctorHomepage> {
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
              "KMNR HEALTHCARE",
              selectionColor: Colors.black,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset("assets/logo.png", height: 200, width: 200),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 25, right: 25, bottom: 16),
              child: Text(
                "Doctor's Homepage",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            AppButtonWidget(
              title: "Patient Details",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/details");
              },
            ),
            SizedBox(
              height: 24,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/doctor_splash_screen");
              },
              title: "Patient's Previous Details",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 24,
            ),
            AppButtonWidget(
              title: "My Appointments",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/admin_splash_screen");
              },
            ),
          ]),
        ),
      ),
    );
  }
}
