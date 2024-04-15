import 'dart:developer';
import 'dart:isolate';

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
  double progress = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinearProgressIndicator(
              value: progress,
            ),
            ElevatedButton(
                onPressed: () async {
                  final receivePort = ReceivePort();
                  await Isolate.spawn(complexTask, receivePort.sendPort);
                  receivePort.listen((message) {
                    SendPortTemp data = SendPortTemp.fromJson(message);
                    setState(() {
                      progress = data.progress;
                    });
                  });
                },
                child: const Text("Please Click"))
          ],
        ),
      ),
    );
  }
}

void complexTask(SendPort sendPort) async {
  for (int i = 0; i < 10000000; i++) {
        sendPort.send(SendPortTemp(progress: (i / 10000000) * 100).toJson());
  }
  sendPort.send(SendPortTemp(progress: 100).toJson());
}

class SendPortTemp {
  double progress = 0.0;
  SendPortTemp({required this.progress});
  SendPortTemp.fromJson(Map json) {
    progress = json["progress"];
  }
  Map toJson()=>{
    "progress": progress
  };
}d
