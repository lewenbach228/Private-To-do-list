import 'package:flutter/material.dart';
import 'package:mylist/models/task_data.dart';
import 'package:mylist/screens/tasks.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: const MaterialApp(
        // title: 'Journey Tasks',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
