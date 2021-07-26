import 'package:scoped_model/scoped_model.dart';

class ScopedModelData extends Model {
  ScopedModelData();

  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
