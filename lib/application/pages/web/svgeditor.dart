
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svgtool/application/pages/common/state.dart';

class WSvgEditorPartial extends ConsumerWidget {
  const WSvgEditorPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 200,
        height: 200,
        child:  TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '输入SVG文本',
          ),
          onChanged: (value) {
            ref
              .read(todoListProvider.notifier)
              .addTodo(Todo(description: 'This is a new todo'));
          },
        ),
    );
  }
}