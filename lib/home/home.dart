import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Idle Game")),
      body: const AppearAfterOneSecond(),
    );
  }
}

class AppearAfterOneSecond extends StatelessWidget {
  const AppearAfterOneSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
          const Duration(seconds: 1), () => "Appear after one second"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text(snapshot.data!),
          );
        } else {
          return const Center(child: Text("Wait up!"));
        }
      },
    );
  }
}
