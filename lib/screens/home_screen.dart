import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/task_bloc.dart';
import '../bloc/task_event.dart';
import '../bloc/task_state.dart';
import '../widgets/edit-task_dialog.dart';
import '../widgets/task_tile.dart';
import '../widgets/add_task_dialog.dart';
import '../models/task.dart';
import '../providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const royalBlue = Color(0xFF4169E1);

  void _openAddDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AddTaskDialog(
        onAdd: (title) => context.read<TaskBloc>().add(AddTask(title)),
      ),
    );
  }

  void _openEditDialog(BuildContext context, Task task) {
    showDialog(
      context: context,
      builder: (_) => EditTaskDialog(
        initial: task.title,
        onSave: (newTitle) => context.read<TaskBloc>().add(UpdateTaskTitle(task.id, newTitle)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager",style: TextStyle(fontSize: 26),),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(darkMode ? Icons.dark_mode : Icons.light_mode),
            onPressed: () => context.read<ThemeProvider>().toggleTheme(),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.indigo, Colors.blueAccent], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            if (state.tasks.isEmpty) {
              return const Center(child: Text("No task yet", style: TextStyle(color: Colors.white,fontSize: 26)));
            }
            return ListView(
              padding: const EdgeInsets.all(12),
              children: state.tasks
                  .map((task) => TaskTile(
                task: task,
                onToggle: () => context.read<TaskBloc>().add(ToggleTask(task.id)),
                onDelete: () => context.read<TaskBloc>().add(DeleteTask(task.id)),
                onEdit: () => _openEditDialog(context, task),
              ))
                  .toList(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: royalBlue,
        onPressed: () => _openAddDialog(context),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
