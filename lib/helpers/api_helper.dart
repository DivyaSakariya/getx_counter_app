import 'package:dio/dio.dart';
import 'package:getx_counter_app/modals/api_modal.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  String api = "https://dummyjson.com/products?limit=100";

  Dio dio = Dio();

  getData() async {
    Response response = await dio.get(api);

    if (response.statusCode == 200) {
      List allData = response.data['products'];

      List<ProductModal> allProducts = allData
          .map(
            (e) => ProductModal.fromMap(data: e),
          )
          .toList();

      return allProducts;
    } else {
      return null;
    }
  }
}
