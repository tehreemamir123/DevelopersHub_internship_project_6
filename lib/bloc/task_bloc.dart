import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_event.dart';
import 'task_state.dart';
import '../models/task.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddTask>((event, emit) {
      if (event.title.trim().isEmpty) return;
      final newTask = Task.create(event.title.trim());
      emit(state.copyWith(tasks: [newTask, ...state.tasks]));
    });

    on<ToggleTask>((event, emit) {
      final updated = state.tasks.map((t) {
        if (t.id == event.id) return t.copyWith(isDone: !t.isDone);
        return t;
      }).toList();
      emit(state.copyWith(tasks: updated));
    });

    on<UpdateTaskTitle>((event, emit) {
      final updated = state.tasks.map((t) {
        if (t.id == event.id) return t.copyWith(title: event.newTitle);
        return t;
      }).toList();
      emit(state.copyWith(tasks: updated));
    });

    on<DeleteTask>((event, emit) {
      final updated = state.tasks.where((t) => t.id != event.id).toList();
      emit(state.copyWith(tasks: updated));
    });

    on<ClearCompleted>((event, emit) {
      final updated = state.tasks.where((t) => !t.isDone).toList();
      emit(state.copyWith(tasks: updated));
    });
  }
}
