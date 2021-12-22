import 'package:flutter/material.dart';
import 'package:todo_app/controller/appdata.dart';
import 'package:todo_app/models/event.dart';
import 'package:todo_app/presentation/listpage/list_page.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {

  String eventName = "";

  @override
  Widget build(BuildContext context) {

    // String eventName = "";

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
            const Text('Add Todo',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter name of todo',
                ),
                onChanged: (str){
                  setState(() {
                    eventName = str;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          if(eventName != "") {
            //adding to event global variable
            globalEventList.add(Event(name: eventName));
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => const TodoHomePage(),
              ),
            );
          }
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
