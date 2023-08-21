import 'package:flutter/material.dart';
import 'package:markdown_toolbar/markdown_toolbar.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Markdown Toolbar Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[

              ElevatedButton(
                onPressed: () {
                  null;
                },
                child: Text('送信'),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            null;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}