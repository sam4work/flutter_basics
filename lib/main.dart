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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Columns and Rows'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        // spacing: 10,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                    child: const Text("Column 1 Row 1"),
                ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Center(
                    child: const Text("Column 1 Row 2"),
                ),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  // width: 100,
                  color: Colors.pink,
                  child: Center(
                    child: const Text("Column 1 Row 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  // width: 100,
                  color: Colors.grey,
                  child: Center(
                    child: const Text("Column 2 Row 1"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
