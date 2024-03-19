import 'package:flutter/material.dart';
import 'app_button_widget.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _decriptionContoller = TextEditingController();
  List<TodoTaskData> todoTaskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Target Setting")),
      body: Container(          
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20),
            child: Column(
              
              children: [
                Column(
                  children: [
                    Text(
                      "Target Setting",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(
                          hintText: "Enter your target",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Target Description",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      maxLines: 5,
                      controller: _decriptionContoller,
                      decoration: InputDecoration(
                          hintText: "Enter your Target Decription",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    AppButtonWidget(
                        title: "Add Target",
                        titleColor: Colors.white,
                        buttonBackgroundColor: Color.fromRGBO(0, 0, 255, 1),
                        buttonBorderColor: Colors.transparent,
                        onPressed: () {
                          final todoTaskData = TodoTaskData(
                              title: _titleController.text,
                              decription: _decriptionContoller.text);
                          setState(() {
                            todoTaskList.add(todoTaskData);
                          });
                        })
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: todoTaskList.length,
                    itemBuilder: (context, index) {
                      final data = todoTaskList[index];
                      return Card(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Target Setting:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromARGB(255, 33, 120, 199)),
                                ),
                                Text(data.title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Target Description",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 23, 120, 199),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(data.decription,
                                    maxLines: null,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ]),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class TodoTaskData {
  String title;
  String decription;
  TodoTaskData({
    required this.title,
    required this.decription,
  });
}


/*

floatingActionButton: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Add Task",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("/addTodo");
        },
      ),
 */