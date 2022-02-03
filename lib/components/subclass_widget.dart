import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_questions/simple_store.dart';

class SubclassWidget extends StatelessObserverWidget {
  const SubclassWidget({
    Key? key,
    required this.store,
  }) : super(key: key);

  final SimpleStore store;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatelessObserverWidget Usage',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This screen extends StatelessObserverWidget"),
        ),
        body: Center(
          child: Text(store.value.toString()),
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () => store.value++,
        ),
      ),
    );
  }
}
