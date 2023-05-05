import 'package:flutter/material.dart';
import 'package:tarea_1/screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MC Flutter'),
        ),
        body: const HomePage(),
      ),
    );
  }
}