import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];
  final mybox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Example Task", false],
    ];
  }

  void loadData() {
    toDoList = mybox.get("TODOLIST");
  }

  void updateDataBase() {
    mybox.put("TODOLIST", toDoList);
  }
}
