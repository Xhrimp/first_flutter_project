import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });
  final int test = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //declare nullable variable
  int? number;

  @override
  void initState() {
    number = widget.test;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (number != null) {
                        number = number! + 1; //ensure that variable is not null
                      }
                    });
                  },
                  child: Text("$number")),
              ElevatedButton(onPressed: () {}, child: const Text("data")),
            ],
          ),
        ),
      ),
    );
  }
}
