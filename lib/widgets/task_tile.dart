import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const TaskTile({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onDelete,
    required this.onEdit,
  });

  static const Color tileBlue = Color(0xFF0D47A1);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: tileBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: IconButton(
          icon: Icon(task.isDone ? Icons.check_circle : Icons.circle_outlined, color: Colors.white),
          onPressed: onToggle,
        ),
        title: Text(
          task.title,
          style: TextStyle(
            color: Colors.white,
            decoration: task.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: onEdit, icon: const Icon(Icons.edit, color: Colors.white)),
            IconButton(onPressed: onDelete, icon: const Icon(Icons.delete, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
