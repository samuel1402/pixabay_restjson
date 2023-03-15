import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:pixabay_restjson/models/pixbay_model.dart';

// class PixabayApi {
//   static Future<List<PixabayModel>> getPixabay() async {
//     var uri = Uri.https(
//         'https://pixabay.com/api/?key=31248557-13e87bcf1d8a9e590bdee5d75&q=background&image_type=photo&pretty=true');
//     final response = await http.get(uri);
//     Map data = jsonDecode(response.body);
//     List _temp = [];

//     for (var i in data['hits']) {
//       _temp.add(['hits']);
//     }
//     return PixabayModel.pixabaysFromSnapshot(_temp);
//   }
// }

class PixabayApi {
  String endpoint =
      'https://pixabay.com/api/?key=31248557-13e87bcf1d8a9e590bdee5d75&q=background&image_type=photo&pretty=true';
  Future<List<PixabayModel>> getPixabay() async {
    http.Response response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['hits'];
      return result.map(((e) => PixabayModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
