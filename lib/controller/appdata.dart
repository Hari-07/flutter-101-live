
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/models/event.dart';

// List<Event> globalEventList = [];

//github page
//read up on how shared pref

//keywords: late, static, factory
//File Type: JSON

class AppData{

  static List<Event> _eventList = [];
  static late SharedPreferences _sharedPreferences;
  static List<String> _jsonEventList = [];

  static Future<void> initEvent() async {

    _sharedPreferences = await SharedPreferences.getInstance();

    final _tempJsonEventList = _sharedPreferences.getStringList('todoList');

    if(_tempJsonEventList != null){ //data is there in your phone
      _jsonEventList = _tempJsonEventList;
      _eventList = _tempJsonEventList.map((e) => Event.fromJson(jsonDecode(e))).toList();
      //String -> Map<String,dynamic>
      //Map<String,dynamic> -> Event Object

    }
  }

  static List<Event> getEvents(){
    return _eventList;
  }

  static Future<void> addEvent(Event event) async {
    _eventList.add(event);
    _jsonEventList.add(jsonEncode(event));

    //Event Object -> Map<String,dynamic>
    //Map<String,dynamic> -> String

    await _sharedPreferences.setStringList('todoList', _jsonEventList);
  }

}


