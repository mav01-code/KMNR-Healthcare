import 'package:flutter/material.dart';

class Injections extends StatefulWidget {
  const Injections({Key? key}) : super(key: key);

  @override
  _InjectionsState createState() => _InjectionsState();
}

class _InjectionsState extends State<Injections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Injections",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(children: [
                  Image.asset(
                    "assets/injection.jpg",
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Acetaminophen",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(229, 96, 24, 1),
                              )))),
                  SizedBox(height: 18),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Adrenaline",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(229, 96, 24, 1),
                              )))),
                  SizedBox(height: 18),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Amphotericin B",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(229, 96, 24, 1),
                              )))),
                  SizedBox(
                    height: 18,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Ampicillin",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(229, 96, 24, 1),
                              )))),
                  SizedBox(
                    height: 18,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Atropine",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(229, 96, 24, 1),
                              )))),
                  SizedBox(
                    height: 18,
                  ),
                ]))));
  }
}
