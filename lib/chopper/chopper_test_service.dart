import 'package:chopper/chopper.dart';

part 'chopper_test_service.chopper.dart';

@ChopperApi(baseUrl: '/albums')
abstract class ChopperTestService extends ChopperService {
  static ChopperTestService create() {
    final client = ChopperClient(
      // The first part of the URL is now here
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [
        // The generated implementation
        _$ChopperTestService(),
      ],
      // Converts data to & from JSON and adds the application/json header.
      converter: JsonConverter(),
    );
    return _$ChopperTestService(client);
  }

  @Get()
  Future<Response> getPosts();
}
