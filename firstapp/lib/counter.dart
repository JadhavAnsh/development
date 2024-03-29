import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Counter App',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _resetCounter() {
  //   setState(() {
  //     _counter = 0;
  //   });
  // }

  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //     if (_counter < 0) {
  //       _counter = 0;
  //     }
  //   });
  // }

  void _manageCounter(String operation) {
    setState(() {
      switch (operation) {
        case 'increment':
          _counter++;
          break;
        case 'reset':
          _counter = 0;
          ;
          break;
        case 'decrement':
          _counter--;
          if (_counter <= 0) {
            _counter = 0;
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
          onPressed: () => _manageCounter('increment'),
          child: const Icon(Icons.add),
        ),
        const SizedBox(width: 16),
        FloatingActionButton(
          onPressed: () => _manageCounter('reset'),
          child: const Icon(Icons.numbers),
        ),
        const SizedBox(width: 16),
        FloatingActionButton(
          onPressed: () => _manageCounter('decrement'),
          child: const Icon(Icons.remove),
        ),
      ]),
    );
  }
}
