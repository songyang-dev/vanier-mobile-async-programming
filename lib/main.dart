import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const AsyncProgrammingApp());
}

class AsyncProgrammingApp extends StatelessWidget {
  const AsyncProgrammingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Async Programming',
      home: HomeScreen(),
    );
  }
}
