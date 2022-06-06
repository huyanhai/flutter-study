import 'package:flutter/material.dart';
import 'package:my_app/store/demo.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  bool isCollection = false;
  int count = 0;

  final demo = Demo();

  changeCollection() {
    setState(() {
      isCollection = !isCollection;
      if (isCollection) {
        count = count + 1;
      } else {
        count = count - 1;
      }
      demo.add('$count');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: ListTile(
            title: Text("title"),
            subtitle: Text("leading"),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: changeCollection,
                child: Icon(
                  isCollection ? Icons.star : Icons.star_border,
                  color: Colors.redAccent,
                ),
              ),
              Text("$count")
            ],
          ),
        )
      ],
    );
  }
}
