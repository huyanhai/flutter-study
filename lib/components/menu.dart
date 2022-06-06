import 'package:flutter/material.dart';

final myData = [
  {
    'icon': const Icon(
      Icons.abc_outlined,
      color: Colors.blue,
    ),
    'text': const Text("CALL")
  },
  {
    'icon': const Icon(Icons.abc_outlined, color: Colors.blue),
    'text': const Text("CALL")
  },
  {
    'icon': const Icon(Icons.abc_outlined, color: Colors.blue),
    'text': const Text("CALL")
  },
];

class Menu extends StatelessWidget {
  List<Widget> getList() {
    List<Widget> list = [];
    myData.forEach((item) {
      list.add(
        Expanded(
          flex: 1,
          child: Column(
            children: [item["icon"] as Widget, item["text"] as Widget],
          ),
        ),
      );
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: getList(),
    );
  }
}
