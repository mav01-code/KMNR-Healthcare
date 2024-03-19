import 'package:flutter/material.dart';

class Cough extends StatefulWidget {
  const Cough({Key? key}) : super(key: key);

  @override
  _CoughState createState() => _CoughState();
}

class _CoughState extends State<Cough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cough",
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
                child: Column(children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        color: Color.fromRGBO(229, 96, 24, 1),
                        child: Text(
                          "Dextromethorphan",
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
                          "Guaifenesin",
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
                          "Codral",
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
                          "Coldrex",
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
                          "Dimetapp",
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
                        "Robitussin",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
