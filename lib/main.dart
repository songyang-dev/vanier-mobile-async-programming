import 'package:flutter/material.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
