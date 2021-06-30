import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'listmodel.g.dart';

class Task {
  @HiveField(2)
  String name;

  @HiveField(3)
  bool checked;

  Task({required this.name, required this.checked});
}

@HiveType(typeId: 0)
class ToDoList {
  ToDoList({required this.name, required this.tasks});

  @HiveField(0)
  late String name;

  @HiveField(1)
  late List<Task> tasks;
}
