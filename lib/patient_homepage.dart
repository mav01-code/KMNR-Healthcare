// Import statements...

import 'package:flutter/material.dart';
import 'package:health/app_button_widget.dart';

class PatientHomepage extends StatefulWidget {
  const PatientHomepage({Key? key}) : super(key: key);

  @override
  _PatientHomepageState createState() => _PatientHomepageState();
}

class _PatientHomepageState extends State<PatientHomepage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/main.png", height: 300, width: 800),
              Text(
                "Welcome to KMNR HEALTHCARE!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Your health is our priority. Explore the various services and information available on our app to support your well-being.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              buildAppButton("Appointments", "/appointment"),
              buildAppButton("Pharmacy", "/pharmacy"),
              buildAppButton("Search Doctors", "/search_doc"),
              buildAppButton("Predict Diseases", "/predictdisease"),
              buildAppButton("Feedback", "/feedback"),
              buildAppButton("Notifications", "/notifications"),
              // ... Other AppButtonWidget instances for different functionalities
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppButton(String title, String route) {
    return Column(
      children: [
        SizedBox(height: 14),
        AppButtonWidget(
          title: title,
          titleColor: Colors.black,
          buttonBackgroundColor: Colors.white,
          buttonBorderColor: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
        ),
      ],
    );
  }
}
