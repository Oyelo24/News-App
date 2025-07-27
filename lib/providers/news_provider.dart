import 'package:flutter/material.dart';
import 'package:newsapp/core/services/api_service.dart';

class NewsProvider with ChangeNotifier {
  final NewsApiService _newsApiService = NewsApiService();

  List<dynamic> _topStories = [];
  bool _isLoading = false;
  String? _error;

  List<dynamic> get topStories => _topStories;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchTopStories() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final data = await _newsApiService.fetchTopStories();
      _topStories = data;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}