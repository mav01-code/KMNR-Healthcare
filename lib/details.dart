import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isVisibleOff = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Patient Details",
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
                buildRowWithTextField("Full Name", TextEditingController(), ""),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Appointment Date and Time", TextEditingController(), ""),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Mobile Number", TextEditingController(), "+91xxxxxxxxxx"),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Health Issue in brief", TextEditingController(), ""),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Email", TextEditingController(), "kmnr@gmail.com"),
                SizedBox(height: 18),
                buildRowWithTextField(
                    "Allergies(if any)", TextEditingController(), ""),
                SizedBox(height: 18),
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

  Widget buildLoginRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
