import 'package:flutter/material.dart';

class F1 extends StatefulWidget {
  const F1({Key? key}) : super(key: key);

  @override
  _F1State createState() => _F1State();
}

class _F1State extends State<F1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KMNR HEALTHCARE",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "THANK YOU",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your feedback has been submitted successfully. Thank your for giving us your valuable feedback. It matters a lot to us.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 20),
                Text(
                  "If you are facing any issues with the app, please send a mail to support@kmnr.com or contact +91 99xxx xxxxx.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, "/patient_home");
                        },
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Go back to home page",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
