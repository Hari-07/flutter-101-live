import 'package:flutter/material.dart';
import 'package:todo_app/models/event.dart';

class TodoListElement extends StatefulWidget {
  const TodoListElement({Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _TodoListElementState createState() => _TodoListElementState();
}

class _TodoListElementState extends State<TodoListElement> {



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
                value: widget.event.isCompleted,
                onChanged: (val) {
                  setState(() {
                    widget.event.toggleIsCompleted();
                  });
                },
              activeColor: Colors.black,
            ),
            SizedBox(width: 10),
            Text(widget.event.name),
          ],
        )
    );
  }
}