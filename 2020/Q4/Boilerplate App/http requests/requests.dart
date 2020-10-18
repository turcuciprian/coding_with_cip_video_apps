import 'package:dio/dio.dart';

class DemoRequests {
  static final DemoRequests _singleton = DemoRequests._internal();

  factory DemoRequests(){
    return _singleton;
  }

  DemoRequests._internal();

  Future<Map<String, dynamic>> requestTest() async{
     var response = await Dio().get('https://httpbin.org/json');
     return response.data;
  }
}