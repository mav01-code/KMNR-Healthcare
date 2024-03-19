import 'package:flutter/material.dart';

class Cold extends StatefulWidget {
  const Cold({Key? key}) : super(key: key);

  @override
  _ColdState createState() => _ColdState();
}

class _ColdState extends State<Cold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cold",
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
                            "Cetirizine",
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
                            "Chlorpheniramine",
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
                            "Desloratadine",
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
                            "Diphenhydramine",
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
                            "Levocetirizine",
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
                            "loratadine",
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
