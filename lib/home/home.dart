import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Idle Game")),
      body: AppearAfterOneSecond(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Watch this grow forever!",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              StreamBuilder(
                stream: Stream.periodic(const Duration(milliseconds: 500),
                    (computationCount) => computationCount),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      "${snapshot.data}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  } else {
                    return Text(
                      "-",
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
