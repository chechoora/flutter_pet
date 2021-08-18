import 'package:http/http.dart' as http;
import 'package:pet/chopper/chopper_test_service.dart';

class ApiManager {
  Future<String> getHttp() async {
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
      print('response: $response');
    } on Exception catch (_) {
      return Future.value('Not Nice!');
    }
    return Future.value('Nice!');
  }

  Future<String> getChopper() async {
    try {
      final response = await ChopperTestService.create().getPosts();
      print('response: $response');
    } on Exception catch (_) {
      return Future.value('Not Nice!');
    }
    return Future.value('Nice!');
  }
}
