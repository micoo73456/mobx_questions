import 'package:flutter/material.dart';

void main() {
  runApp(const MobxQuestions());
}

class MobxQuestions extends StatelessWidget {
  const MobxQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MobxQuestions"),
        ),
        body: Container(),
      ),
    );
  }
}
