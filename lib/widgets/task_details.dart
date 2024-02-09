

import 'package:flutter/material.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:todoapp/widgets/widgets.dart';
import 'package:gap/gap.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: task.category.color.withOpacity(0.3),
            child: Icon(
              task.category.icon,
              color: task.category.color,
            ),
          ),
          const Gap(16),
          Text(
            task.title,
            style: style.titleMedium?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(task.time, style: style.titleMedium),
          const Gap(16),
          Visibility(
            visible: !task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('Tarea por completar en ${task.date}'),
                Icon(
                  Icons.check_box,
                  color: task.category.color,
                )
                
              ],
            ),
            ),
            const Gap(16),
            Divider(
              thickness: 1.5,
              color: task.category.color,
            ),
            const Gap(16),
            Text(
              task.note.isEmpty
              ? 'No hay ninguna nota adicional'
              : task.note,
            ),

            const Gap(16),
            Visibility(
            visible: task.isCompleted,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('Tarea Completa'),
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                )
                
              ],
            ),
            ),

        ],
      ),
    );
  }
}