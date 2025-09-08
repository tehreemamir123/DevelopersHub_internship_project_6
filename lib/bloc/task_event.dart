import 'package:equatable/equatable.dart';

abstract class TaskEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddTask extends TaskEvent {
  final String title;
  AddTask(this.title);
  @override
  List<Object?> get props => [title];
}

class ToggleTask extends TaskEvent {
  final String id;
  ToggleTask(this.id);
  @override
  List<Object?> get props => [id];
}

class UpdateTaskTitle extends TaskEvent {
  final String id;
  final String newTitle;
  UpdateTaskTitle(this.id, this.newTitle);
  @override
  List<Object?> get props => [id, newTitle];
}

class DeleteTask extends TaskEvent {
  final String id;
  DeleteTask(this.id);
  @override
  List<Object?> get props => [id];
}

class ClearCompleted extends TaskEvent {}
