import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_questions/simple_store.dart';

class ObserverWidget extends StatelessWidget {
  const ObserverWidget({
    Key? key,
    required this.store,
  }) : super(key: key);

  final SimpleStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return MaterialApp(
        title: 'Observer Widget Usage',
        home: Scaffold(
          appBar: AppBar(
            title:
                const Text("This screen uses Observer to update the message"),
          ),
          body: Center(
            child: Text(store.value.toString()),
          ),
          floatingActionButton: FloatingActionButton.small(
            onPressed: () => store.value++,
          ),
        ),
      );
    });
  }
}
