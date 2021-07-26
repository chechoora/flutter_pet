import 'package:flutter/material.dart';
import 'package:pet/scoped_model/scoped_model_data.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelContentWidget extends StatelessWidget {
  const ScopedModelContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedModelData>(
      builder: (context, child, model) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${model.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        );
      },
    );
  }
}
