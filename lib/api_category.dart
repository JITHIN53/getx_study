import 'package:getxx/category_model.dart';
import 'package:http/http.dart' as http;

class APIService {


  static Future<List<CategoryResponseModel?>> categorydata() async {
    http.Response response = await http.get(Uri.parse("https://sta.farawlah.sa/api/mobile/categories"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      return categoryResponseModelFromJson(jsonString);
    } else {
      throw Exception('failed to load data');
    }
  }
}
