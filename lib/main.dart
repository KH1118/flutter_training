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
  List<String> favoriteTheme = ["咲希", "颯雷", "光雅", "照逢"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: favoriteTheme.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Center(
              child: Text(
                "「慧」で踊った作品",
                style: TextStyle(fontSize: 25),
              ),
            );
          }
          return Card(
            shadowColor: Colors.blueGrey,
            child: Text(favoriteTheme[index - 1]),
          );
        },
      ),
    );
  }
}
