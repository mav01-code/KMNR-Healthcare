import 'package:flutter/material.dart';

class AdminSignup extends StatefulWidget {
  const AdminSignup({Key? key}) : super(key: key);

  @override
  _AdminSignupState createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  bool isVisibleOff = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ADMIN SIGNUP",
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                buildRowWithTextField(
                    "Email Address", _emailController, "hello@gmail.com"),
                SizedBox(height: 18),
                buildRowWithPassword("Password", _passwordController),
                SizedBox(height: 18),
                buildRowWithTextField("Full Name", TextEditingController(), ""),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Mobile Number", TextEditingController(), "+91xxxxxxxxxx"),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Address", TextEditingController(), "City of residence"),
                SizedBox(height: 18),
                buildRowWithTextField("Admin ID", TextEditingController(), ""),
                SizedBox(height: 18),
                buildForgotPasswordButton(),
                SizedBox(height: 18),
                Center(
                  child: buildSignupButton(),
                ),
                SizedBox(height: 18),
                buildLoginRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRowWithTextField(
      String label, TextEditingController controller, String hintText) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRowWithPassword(String label, TextEditingController controller) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            controller: controller,
            obscureText: isVisibleOff,
            decoration: InputDecoration(
              hintText: "Password",
              suffixIcon: IconButton(
                icon: Icon(
                  isVisibleOff ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    isVisibleOff = !isVisibleOff;
                  });
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text("Forgot Password"),
        ),
      ],
    );
  }

  Widget buildSignupButton() {
    return TextButton(
      onPressed: () {
        showValidationAlert();
      },
      child: Container(
        width: 280,
        height: 50,
        alignment: Alignment.center,
        color: Color.fromRGBO(234, 77, 33, 1),
        child: Text(
          "Signup",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget buildLoginRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already registered?"),
        TextButton(
          onPressed: () {},
          child: Text("Login"),
        ),
      ],
    );
  }

  void showValidationAlert() {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert!"),
            content: Text("Please enter email and password"),
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
