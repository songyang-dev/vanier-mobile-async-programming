import 'package:flutter/material.dart';

class AppearAfterOneSecond extends StatelessWidget {
  const AppearAfterOneSecond({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    ConnectionState.done;
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1), () => child),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return child;
        } else {
          return const Center(child: Text("Wait up!"));
        }
      },
    );
  }
}
