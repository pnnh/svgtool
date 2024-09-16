import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required String description,
    @Default(false) bool completed,
  }) = _Todo;
}

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<List<Todo>> build() async {

    return [
      Todo(description: 'Learn Flutter', completed: true),
      Todo(description: 'Learn Riverpod'),
    ];
  }

  Future<void> addTodo(Todo todo) async {
    debugPrint("addTodo");

    // We decode the API response and convert it to a List<Todo>
    List<Todo>  newTodos = <Todo>[todo];

    // We update the local cache to match the new state.
    // This will notify all listeners.
    state = AsyncData(newTodos);
  }
}