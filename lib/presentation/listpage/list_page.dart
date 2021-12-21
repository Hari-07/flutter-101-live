import 'package:flutter/material.dart';
import 'list_page_element.dart';
import 'list_page_fab.dart';

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> events = ["Event 1", "Event 2", "Event 3"];


    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
          bottom: 10,
          right: 10,
          top: 100,
        ),
        child: Column(
          children: [
            const Text('Todo List',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child:ListView.builder(
                itemBuilder: (context, index){
                  return TodoListElement(event: events[index]);
                },
                itemCount: events.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ListPageFAB(),
    );
  }
}