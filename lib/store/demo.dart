import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Demo extends ChangeNotifier {
  final List<String> _list = [];

  List<String> get lists => _list;

  List<String> getList() {
    return _list;
  }

  void add(String value) {
    _list.add(value);
    print("add:$value");
    notifyListeners();
  }

  void remove(String value) {
    _list.remove(value);
    notifyListeners();
  }

  void clear() {
    _list.clear();
    notifyListeners();
  }
}
