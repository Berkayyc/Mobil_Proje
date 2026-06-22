import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

// API servis sınıfı
// Gün 4 konusu: JSON mantığı ve gerçek API'den veri okuma.
// Not: Eğitimdeki örnek API'ler (wantapi.com) gerçek olmadığı için,
// alternatif olarak önerilen Fake Store API kullanılmıştır.
class ProductService {
  static const String baseUrl = 'https://fakestoreapi.com';

  // Tüm ürünleri getirir
  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Ürünler yüklenemedi (Hata kodu: ${response.statusCode})');
    }
  }

  // Kategorilere göre ürünleri getirir (opsiyonel kullanım)
  static Future<List<Product>> fetchProductsByCategory(String category) async {
    final response =
        await http.get(Uri.parse('$baseUrl/products/category/$category'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Kategori ürünleri yüklenemedi');
    }
  }
}
