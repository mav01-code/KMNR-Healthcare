import 'package:flutter/material.dart';
import 'todo_list.dart';
import 'app_button_widget.dart';

class FeedBack extends StatelessWidget {
  FeedBack({Key? key}) : super(key: key);
  TextEditingController _titleController = TextEditingController();
  TextEditingController _decriptionContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feedback")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Feedback",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Feedback description",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  maxLines: 5,
                  controller: _decriptionContoller,
                  decoration: InputDecoration(
                      hintText: "Enter your Feedback Decription",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(
                  height: 8,
                ),
                AppButtonWidget(
                    title: "Submit",
                    titleColor: Colors.white,
                    buttonBackgroundColor: Color.fromRGBO(229, 96, 24, 1),
                    buttonBorderColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pushNamed(context, "/f1");
                      final todoTaskData = TodoTaskData(
                          title: _titleController.text,
                          decription: _decriptionContoller.text);
                      // var list = todoTaskList.value;
                      // list.add(todoTaskData);
                      // todoTaskList.value = list;
                      // Navigator.pop(context);
                    })
              ]),
        ),
      ),
    );
  }
}
