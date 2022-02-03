import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_questions/components/observer_widget.dart';
import 'package:mobx_questions/simple_store.dart';

void main() {
  testWidgets('ObserverWidget updates message', (WidgetTester tester) async {
    await tester.pumpWidget(ObserverWidget(store: SimpleStore()..value = 0));

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}
