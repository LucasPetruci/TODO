import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference box
  final _mybox = Hive.box('mybox');

  //run this method if this is the first time the app is opened
  void createInitialData() {
    toDoList = [
      {'task': 'Task 1', 'completed': false},
      {'task': 'Task 2', 'completed': false},
    ];
  }

  //load the data from db
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  //update the database
  void updateData() {
    _mybox.put('TODOLIST', toDoList);
  }
}
