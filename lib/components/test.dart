import 'package:flutter/material.dart';
import 'package:my_app/store/demo.dart';

class Test extends StatelessWidget {
  final demo = Demo();

  List<Widget> getList() {
    List<Widget> lists = [];
    demo.getList().map((e) => {lists.add(Text("store data:$e"))});
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getList(),
    );
  }
}
