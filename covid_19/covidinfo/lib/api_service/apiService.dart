import 'package:covidinfo/model/model.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
class Apiservice{
  Future<Model> fetchWorldWideData() async {
  final response =
      await http.get(Uri.https('corona.lmao.ninja', 'v2/all'));

  if (response.statusCode == 200) {
    
    return Model.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
}