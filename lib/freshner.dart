import 'package:flutter/material.dart'; 
 
class Screen11 extends StatefulWidget { 
  const Screen11({super.key}); 
 
  @override 
  State<Screen11> createState() => _Screen11State(); 
} 
 
class _Screen11State extends State<Screen11> 
    with SingleTickerProviderStateMixin { 
  late AnimationController _controller; 
 
  @override 
  void initState() { 
    super.initState(); 
    _controller = AnimationController(vsync: this); 
  } 
 
  @override 
  void dispose() { 
    _controller.dispose(); 
    super.dispose(); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
        appBar: AppBar( 
          title: Text("Mouth freshners", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)), 
          centerTitle: true, 
        ), 
        body: SingleChildScrollView( 
            child: Container( 
                width: MediaQuery.of(context).size.width, 
                height: MediaQuery.of(context).size.height, 
                child: Column(children: [ 
                  Image.asset( 
                    "assets/mf.webp", 
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
                          child: Text("Saunfshiver", 
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
                          child: Text("Vedshakti", 
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
                          child: Text("Listerine", 
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
                          child: Text("Herbs", 
                              style: TextStyle( 
                                fontSize: 16, 
                                fontWeight: FontWeight.w600, 
                                color: Color.fromRGBO(229, 96, 24, 1), 
                              )))), 
                  SizedBox(height: 18), 
                ])))); 
  } 
}