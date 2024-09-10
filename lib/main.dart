import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ColoredBox(color: Colors.blue),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: ColoredBox(color: Colors.blue),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ColoredBox(color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ColoredBox(color: Colors.red),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: ColoredBox(color: Colors.red),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ColoredBox(color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ColoredBox(color: Colors.green),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: ColoredBox(color: Colors.green),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ColoredBox(color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
