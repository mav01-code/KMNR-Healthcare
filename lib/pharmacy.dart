import 'package:flutter/material.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  _PharmacyState createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
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
                Image.asset(
                  "assets/pharmacy.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Welcome to our Pharmacy!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "At KMNR HEALTHCARE Pharmacy, we are committed to providing you with the highest quality medications and healthcare products.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/medicines");
                        },
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Medicines",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/injections");
                        },
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Injections",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/diary");
                        },
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Diary Supplements",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/freshner");
                      },
                      child: Container(
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        color: Color.fromRGBO(229, 96, 24, 1),
                        child: Text(
                          "Mouth Freshner's",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/freshner");
                      },
                      child: Container(
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        color: Color.fromRGBO(229, 96, 24, 1),
                        child: Text(
                          "Skincare",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/freshner");
                      },
                      child: Container(
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        color: Color.fromRGBO(229, 96, 24, 1),
                        child: Text(
                          "Ayurvedic Medicines",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
