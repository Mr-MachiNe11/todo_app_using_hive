
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  // Reference the Hive box
  final _myBox = Hive.box('mybox');

  List toDoList = [];

  // Load data from the database
  void loadData(){
    _myBox.get('TODOLIST',defaultValue: []);
  }

  // Update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}