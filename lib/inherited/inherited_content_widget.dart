import 'package:flutter/material.dart';
import 'package:pet/inherited/inherited_data_widget.dart';

class InheritedContentWidget extends StatelessWidget {
  const InheritedContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${InheritedDataWidget.of(context).counter}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
