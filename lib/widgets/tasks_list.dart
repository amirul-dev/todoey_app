import 'package:flutter/material.dart';
import 'package:flash_chat/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flash_chat/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskItem.name,
              isChecked: taskItem.isDone,
              toggleCheckboxState: (bool checkboxState) {
                taskData.updateTask(taskItem);
              },
              longpressCallback: () {
                taskData.removeTask(taskItem);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
