import 'package:flutter/material.dart';

class InheritedDataWidget extends InheritedWidget {
  const InheritedDataWidget({
    Key? key,
    required this.counter,
    required Widget child,
  }) : super(key: key, child: child);

  static InheritedDataWidget of(BuildContext context) {
    final InheritedDataWidget? result =
        context.dependOnInheritedWidgetOfExactType<InheritedDataWidget>();
    assert(result != null, 'No InheritedDataWidget found in context');
    return result!;
  }

  final int counter;

  @override
  bool updateShouldNotify(InheritedDataWidget old) {
    return counter != old.counter;
  }
}
