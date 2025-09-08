import 'package:equatable/equatable.dart';
import '../models/task.dart';

class TaskState extends Equatable {
  final List<Task> tasks;

  const TaskState({this.tasks = const []});

  List<Task> get pending => tasks.where((t) => !t.isDone).toList();
  List<Task> get completed => tasks.where((t) => t.isDone).toList();

  TaskState copyWith({List<Task>? tasks}) => TaskState(tasks: tasks ?? this.tasks);

  @override
  List<Object?> get props => [tasks];
}
