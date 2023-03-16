import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference box
  final _myBox = Hive.box('mybox');

  //first time the user have access to the todolist
  void createInitialData() {
    toDoList = [
      ["Make tuto", false],
      ["Do ex", false]
    ];
  }

  //load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update data base
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
