import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/categoryModel.dart';

class GetData {
  static Map _data = {};

  static List<CategoriesModel> ads = [];

  static Future<List<CategoriesModel>?> loadData() async {
    await Future.delayed(const Duration(seconds: 5));
    var response = await rootBundle.loadString('assets/data.json');
    _data = jsonDecode(response);

    ads = (_data['ads'] as List)
        .map((e) => CategoriesModel.fromJson(e))
        .toList();
  }
  // CategoriesModel? categoriesModel;
  // Future<List<Ads>?> getData()async{
  //   await Future.delayed(Duration(seconds: 2));
  //     var response=await rootBundle.loadString('assets/data.json');
  //     var value=jsonDecode(response);
  //     categoriesModel=CategoriesModel.fromJson(value);
  //     print(categoriesModel);
  //      }
}