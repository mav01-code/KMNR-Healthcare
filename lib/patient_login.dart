import 'package:flutter/material.dart';

class PatientLogin extends StatefulWidget {
  const PatientLogin({Key? key}) : super(key: key);

  @override
  _PatientLoginState createState() => _PatientLoginState();
}

class _PatientLoginState extends State<PatientLogin> {
  bool isVisibleoff = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "PATIENT LOGIN",
            selectionColor: Colors.black,
          ),
          centerTitle: true,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(children: [
                Image.asset(
                  "assets/kmnr.png",
                  height: 150,
                  width: 100,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                Text("Please enter your credentials to access your account",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "hello@gmail.com",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: isVisibleoff,
                        decoration: InputDecoration(
                          hintText: "Password",
                          /*suffixIcon: InkWell(onTap: () {
                        if (isVisibleoff == true) {
                          setState(() {
                            isVisibleoff = false;
                          });
                        } else {
                          setState(() {
                            isVisibleoff = true;
                          });
                        }
                      }),*/

                          suffixIcon: IconButton(
                            icon: Icon(
                              isVisibleoff
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                isVisibleoff = !isVisibleoff;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 39,
                ),
                TextButton(
                    onPressed: () {
                      showValidationAlert();
                      Navigator.of(context).pushNamed("/patient_home");
                    },
                    child: Container(
                      width: 280,
                      height: 50,
                      alignment: Alignment.center,
                      color: Color.fromRGBO(234, 77, 33, 1),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New Here?"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/patient_signup");
                      },
                      child: Text("Create an account"),
                    )
                  ],
                )
              ]),
            )));
  }

  void showValidationAlert() {
    if (_emailController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert!"),
            content: Text("Please enter email"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              ),
            ],
          );
        },
      );
    } else {
      // Additional handling or remove this else block
    }
    if (_passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert!"),
            content: Text("Please enter password"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              ),
            ],
          );
        },
      );
    } else {
      // Additional handling or remove this else block
    }
  }
}
