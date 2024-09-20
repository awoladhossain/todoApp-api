import 'package:crudapp/add_page.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateTodoAddPage,
        label: const Text(
          "Add Todo",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
    );
  }

  void navigateTodoAddPage() {
    final route = MaterialPageRoute(builder: (context) => AddTodoPage());
    Navigator.push(context, route);
  }
}
