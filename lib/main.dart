import 'package:flutter/material.dart';
import 'package:pet/inherited/inherited_content_widget.dart';
import 'package:pet/inherited/inherited_data_widget.dart';
import 'package:pet/provider/provider_content_widget.dart';
import 'package:pet/provider/provider_model.dart';
import 'package:pet/scoped_model/scoped_model_content_widget.dart';
import 'package:pet/scoped_model/scoped_model_data.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ScopedModelPageState createState() => _ScopedModelPageState();
}

class _InheritedPageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedDataWidget(
      counter: _counter,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: InheritedContentWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class _ProviderPageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ProxyProvider0<ProviderModel>(
        update: (_, __) => ProviderModel(_counter),
        child: ProviderContentWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _ScopedModelPageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ScopedModelData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ScopedModelContentWidget(),
        floatingActionButton: ScopedModelDescendant<ScopedModelData>(
            builder: (context, child, model) {
          return FloatingActionButton(
            onPressed: () {
              model.increment();
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        }), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
