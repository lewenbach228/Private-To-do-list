import 'package:flutter/material.dart';
import 'package:mylist/models/task_data.dart';
import 'package:mylist/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (newValue) {
              taskData.updateTask(task);
            },
            onLongPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
