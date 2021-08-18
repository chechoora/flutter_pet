// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_test_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ChopperTestService extends ChopperTestService {
  _$ChopperTestService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ChopperTestService;

  @override
  Future<Response<dynamic>> getPosts() {
    final $url = '/albums';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
