import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_questions/simple_store.dart';

class MixinWidget extends StatelessWidget with ObserverWidgetMixin {
  const MixinWidget({Key? key, required this.store}) : super(key: key);

  final SimpleStore store;

  @override
  String getName() => '$this';

  @override
  MyStatelessObserverElement createElement() =>
      MyStatelessObserverElement(this);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ObserverWidgetMixin Usage',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This screen uses ObserverWidgetMixin"),
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

class MyStatelessObserverElement extends StatelessElement
    with ObserverElementMixin {
  MyStatelessObserverElement(MixinWidget widget) : super(widget);

  @override
  MixinWidget get widget => super.widget as MixinWidget;
}
