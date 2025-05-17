import 'package:flutter/cupertino.dart';

class providerClass extends  ChangeNotifier {
  List<String> _tasks = [];
  int number = 0;
  List<String> get tasks => _tasks;
  increment(){
    number++;
    notifyListeners();
  }
  void addTask(String task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
