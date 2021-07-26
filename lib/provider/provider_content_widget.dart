import 'package:flutter/material.dart';
import 'package:pet/provider/provider_model.dart';
import 'package:provider/provider.dart';

class ProviderContentWidget extends StatelessWidget {
  const ProviderContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<ProviderModel>();
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
  }
}
