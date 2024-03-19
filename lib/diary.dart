import 'package:flutter/material.dart';

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diary products",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(children: [
                  Image.asset(
                    "assets/diary.jpg",
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(height: 18),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                          width: 280,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Milk",
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
                          child: Text("Yogurt",
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
                          child: Text("Cream",
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
                          child: Text("Cheese",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(229, 96, 24, 1),
                              )))),
                  SizedBox(height: 18),
                ]))));
  }
}
