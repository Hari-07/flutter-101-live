
class Event{
  String name;
  bool isCompleted;
  Event({required this.name, this.isCompleted = false});

  void toggleIsCompleted(){
    isCompleted = !isCompleted;
  }

  factory Event.fromJson(Map<String,dynamic> data) => Event(name: data["name"],
      isCompleted: data["isCompleted"]);

  //Event Object -> Map<String,dynamic>

  Map<String,dynamic> toJson() => {
    'name': name,
    'isCompleted': isCompleted
  };

}