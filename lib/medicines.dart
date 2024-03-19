import 'package:flutter/material.dart';

class Medicines extends StatefulWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  _MedicinesState createState() => _MedicinesState();
}

class _MedicinesState extends State<Medicines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Medicines",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image.asset(
                "assets/medicines.png",
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 6,
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cold");
                    },
                    child: Container(
                      width: 280,
                      height: 50,
                      alignment: Alignment.center,
                      color: Color.fromRGBO(229, 96, 24, 1),
                      child: Text(
                        "Cold",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/fever");
                    },
                    child: Container(
                      width: 280,
                      height: 50,
                      alignment: Alignment.center,
                      color: Color.fromRGBO(229, 96, 24, 1),
                      child: Text(
                        "Fever",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cough");
                    },
                    child: Container(
                      width: 280,
                      height: 50,
                      alignment: Alignment.center,
                      color: Color.fromRGBO(229, 96, 24, 1),
                      child: Text(
                        "Cough",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 280,
                      height: 50,
                      alignment: Alignment.center,
                      color: Color.fromRGBO(229, 96, 24, 1),
                      child: Text(
                        "Another Category",
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
    );
  }
}
