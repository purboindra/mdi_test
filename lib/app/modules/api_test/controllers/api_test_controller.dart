import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:modern_digital_indonesia_test/app/data/model/user_model.dart';

class ApiTestController extends GetxController {
  List<UserModel> userModel = [];

  Future<List<UserModel>> fetchApi() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    Map<String, String> headers = {
      'Content-type': 'application/json',
    };
    try {
      http.Response response = await http.get(
        url,
        headers: headers,
      );

      if (response.statusCode == 200) {
        List jsonResponse = jsonDecode(response.body);
        return jsonResponse
            .map((e) => UserModel.fromJson(e))
            .toList(); // print(userModel);
      }
    } catch (e) {
      Exception("Something Wrong");
    }
    return userModel;
  }
}
