
import 'package:SampleApp/models/Products/searchItem_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class ProductProvider extends ChangeNotifier {
  List<SearchResult> _products = [];
  List<SearchResult> _addedProducts = [];
  String? _error;
  bool _isLoading = false;

  List<SearchResult> get products => _products;
  List<SearchResult> get listItems => _addedProducts;
  String? get error => _error;
  bool get isLoading => _isLoading;

  Future<void> fetchProducts(String query) async {
    try {
      _isLoading = true;
      final response = await http.get(
          Uri.parse('https://restaurant.globifytech.com/Purchase/ProductSearch?ItemCode=$query&SlNumber=0&DeptId=1&UserId=1'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        _products = jsonData.map((item) => SearchResult.fromJson(item)).toList();
        _error = null;
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      _error = 'Error loading products: ${e.toString()}';
      _products.clear();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  Future<void> addToList(SearchResult product) async {
    try {
      _addedProducts.add(product);
      _error = null;
      notifyListeners();
    } catch (e) {
      _error = 'Error adding product to cart: ${e.toString()}';
      notifyListeners();
    }
  }
}
