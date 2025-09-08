import 'package:flutter/material.dart';

class EditTaskDialog extends StatefulWidget {
  final String initial;
  final void Function(String) onSave;

  const EditTaskDialog({super.key, required this.initial, required this.onSave});

  @override
  State<EditTaskDialog> createState() => _EditTaskDialogState();
}

class _EditTaskDialogState extends State<EditTaskDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.initial);
    super.initState();
  }

  void _save() {
    if (_controller.text.trim().isNotEmpty) {
      widget.onSave(_controller.text.trim());
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Task'),
      content: TextField(controller: _controller, onSubmitted: (_) => _save()),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        ElevatedButton(onPressed: _save, child: const Text('Save')),
      ],
    );
  }
}
