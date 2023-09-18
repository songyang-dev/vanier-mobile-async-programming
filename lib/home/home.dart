import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/count.dart';
import 'delay.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Counter(),
      child: Scaffold(
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
                const NumberCounter()
              ],
            ),
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          var counter = Provider.of<Counter>(context, listen: false);
          return FloatingActionButton(
            onPressed: () => counter.userClicks++,
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }
}

class NumberCounter extends StatelessWidget {
  const NumberCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);

    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 500),
        (computationCount) => counter.streamCount++,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error");
        }

        if (snapshot.hasData == false) {
          return Text(
            "-",
            style: Theme.of(context).textTheme.headlineMedium,
          );
        }
        return Text(
          "${counter.getTotalCount()}",
          style: Theme.of(context).textTheme.headlineMedium,
        );
      },
    );
  }
}
