import 'package:flutter/material.dart';

class TodoListElement extends StatefulWidget {
  const TodoListElement({Key? key,
    required this.event,
  }) : super(key: key);

  final String event;

  @override
  _TodoListElementState createState() => _TodoListElementState();
}

class _TodoListElementState extends State<TodoListElement> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 3,
                )
            )
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              activeColor: Colors.black,
            ),
            SizedBox(width: 10),
            Text(widget.event),
          ],
        )
    );
  }
}