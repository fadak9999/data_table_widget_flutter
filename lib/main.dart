import 'package:data_table_widget_flutter/data_table_widget.dart';
import 'package:data_table_widget_flutter/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataTableExample(),
    );
  }
}
