import 'package:flutter/material.dart';
import 'package:my_app/components/collection.dart';
import 'package:my_app/components/menu.dart';
import 'package:my_app/components/test.dart';
import 'package:my_app/utils/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Request request = Request();

getList() async {
  await request.get("/public/list");
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset("images/topbg.jpg"),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                const Collection(),
                Menu(),
                Test(),
                GestureDetector(
                  onTap: getList,
                  child: const Text("get data"),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
