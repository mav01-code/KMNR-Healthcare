import 'package:flutter/material.dart';

class Fever extends StatefulWidget {
  const Fever({ Key? key }) : super(key: key);

  @override
  _FeverState createState() => _FeverState();
}

class _FeverState extends State<Fever> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fever",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Acetaminophen",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(height: 12),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Aspirin",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(height: 12),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Ibuprofen",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(height: 12),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Naproxen",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(height: 12),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Paracetamol",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(height: 12),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          color: Color.fromRGBO(229, 96, 24, 1),
                          child: Text(
                            "Advil",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ))));
  }
}
