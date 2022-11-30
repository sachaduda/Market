import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:online_market/application/domain/models/basket_model/basket_model.dart';
import 'package:online_market/application/domain/models/catalog_model/catalog_model.dart';
import 'package:online_market/application/domain/models/product_details_model/product_details_model.dart';
import 'package:online_market/application/utilities/constans.dart';

class AppApi {
  Future<CatalogModel> fetchCatalog() async {
    var url =
        Uri.https(ApiConstans.catalogBaseUrlDomain, ApiConstans.catalogPath);

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return CatalogModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Data acquisition error!');
    }
  }

  Future<ProductDetailsModel> fetchProductDetails() async {
    var url = Uri.https(
        ApiConstans.catalogBaseUrlDomain, ApiConstans.productDetailsPath);

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return ProductDetailsModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Data acquisition error!');
    }
  }
}
