import 'package:mobx/mobx.dart';

// To generate the part file run:
//   flutter pub run build_runner watch --delete-conflicting-outputs
//
// More generally: A run build_runner B --delete-conflicting-outputs
// - Replace A with 'flutter pub' (for flutter apps) or 'dart' (for pure dart)
// - Replace B with 'build' (forces a one off build) or 'watch' (builds whenever files change)
part 'simple_store.g.dart';

class SimpleStore = _SimpleStore with _$SimpleStore;

abstract class _SimpleStore with Store {
  int value = 0;
}
