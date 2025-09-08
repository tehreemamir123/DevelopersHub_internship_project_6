class Task {
  final String id;
  final String title;
  final bool isDone;
  final DateTime createdAt;

  Task({
    required this.id,
    required this.title,
    this.isDone = false,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory Task.create(String title) {
    final id = DateTime.now().microsecondsSinceEpoch.toString();
    return Task(id: id, title: title);
  }

  Task copyWith({String? title, bool? isDone}) {
    return Task(
      id: id,
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
      createdAt: createdAt,
    );
  }
}
