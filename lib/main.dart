import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:my_app/home/main.dart';
import 'package:my_app/store/demo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Demo(),
    child: const HomePage(),
  ));
}
