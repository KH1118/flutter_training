import 'package:flutter/material.dart';
import '/add_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('リスト一覧'),
      ),
      body: const Center(
        child: Text("リスト一覧画面"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return AddPage();
            }),
          );
        },
        tooltip: 'Add item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
