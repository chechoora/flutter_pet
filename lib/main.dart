import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pet/api_mamager.dart';

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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiManager apiManager = ApiManager();

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: Text('HTTP GET'),
                      onPressed: () {
                        apiManager.getHttp().then((value) {
                          showToast(value);
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text('HTTP POST'),
                      onPressed: () {
                        apiManager.postHttp().then((value) {
                          showToast(value);
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: Text('Chopper GET'),
                      onPressed: () {
                        apiManager.getChopper().then((value) {
                          showToast(value);
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text('Chopper POST'),
                      onPressed: () {
                        apiManager.postChopper().then((value) {
                          showToast(value);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
