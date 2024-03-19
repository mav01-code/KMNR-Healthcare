import 'package:flutter/material.dart';
import 'package:health/a1.dart';
import 'package:health/admin_login.dart';
import 'package:health/admin_signup.dart';
import 'package:health/admin_splash_screen.dart';
import 'package:health/appointment.dart';

import 'package:health/cold.dart';
import 'package:health/cough.dart';
import 'package:health/details.dart';
import 'package:health/diary.dart';
import 'package:health/doctor_homepage.dart';
import 'package:health/doctor_login.dart';
import 'package:health/doctor_signup.dart';
import 'package:health/doctor_splash_screen.dart';
import 'package:health/f1.dart';
import 'package:health/feedback.dart';
import 'package:health/fever.dart';
import 'package:health/freshner.dart';
import 'package:health/injections.dart';
import 'package:health/main_splash_screen.dart';
import 'package:health/medicines.dart';
import 'package:health/notifications.dart';
import 'package:health/patient_homepage.dart';
import 'package:health/patient_login.dart';
import 'package:health/patient_signup.dart';
import 'package:health/pharmacy.dart';
import 'package:health/search_doc.dart';
import 'package:health/signup_screen.dart';
import 'package:health/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/patient_login": (context) => PatientLogin(),
        "/splash_screen": (context) => SplashScreen(),
        "/patient_signup": (context) => PatientSignup(),
        "/doctor_login": (context) => DoctorLogin(),
        "/main": (context) => MainSplashScreen(),
        "/doctor_splash_screen": (context) => DoctorSplashScreen(),
        "/doctor_signup": (context) => DoctorSignup(),
        "/admin_login": (context) => AdminLogin(),
        "/admin_signup": (context) => AdminSignup(),
        "/admin_splash_screen": (context) => AdminSplashScreen(),
        "/signup": (context) => SignupScreen(),
        "/patient_home": (context) => PatientHomepage(),
        "/doctor_home": (context) => DoctorHomepage(),
        "/pharmacy": (context) => Pharmacy(),
        "/medicines": (context) => Medicines(),
        "/a1": (context) => A1(),
        "/cold": (context) => Cold(),
        "/details": (context) => Details(),
        "/feedback": (context) => FeedBack(),
        "/injections": (context) => Injections(),
        "/diary": (context) => Diary(),
        "/freshner": (context) => Screen11(),
        "/appointment": (context) => Appointment(),
        "/notifications": (context) => Notifications(),
        "/f1": (context) => F1(),
        "/fever": (context) => Fever(),
        "/cough": (context) => Cough(),
        "/search_doc": (context) => Search(),
      },
      initialRoute: "/main",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
