import 'package:flutter/material.dart';
import 'package:newsapp/core/services/api_service.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/models/story_model.dart';

class NewsViewModel extends ChangeNotifier {
  final NewsApiService _newsApiService = NewsApiService();

  List<StoryModel> _topStories = [];
  List<StoryModel> _editorsPicks = [];
  List<StoryModel> _featuredStories = [];
  List<StoryModel> _latestStories = [];
  List<StoryModel> _missedStories = [];
  List<CategoryModel> _categories = [];

  bool _isLoading = false;
  String? _error;

  // Getters
  List<StoryModel> get topStories => _topStories;
  List<StoryModel> get editorsPicks => _editorsPicks;
  List<StoryModel> get featuredStories => _featuredStories;
  List<StoryModel> get latestStories => _latestStories;
  List<StoryModel> get missedStories => _missedStories;
  List<CategoryModel> get categories => _categories;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Fetch Top Stories
  Future<void> fetchTopStories() async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchTopStories();
      _topStories = List<StoryModel>.from(data.map((item) => StoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  // Other fetch functions (same pattern as fetchTopStories)
  Future<void> fetchEditorsPicks() async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchEditorsPicks();
      _editorsPicks = List<StoryModel>.from(data.map((item) => StoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategories() async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchCategories();
      _categories = List<CategoryModel>.from(data.map((item) => CategoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  // Add similar methods for:
  fetchFeaturedStories() async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchFeaturedStories();
      _featuredStories = List<StoryModel>.from(data.map((item) => StoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }
  
  fetchLatestStories() async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchLatestStories();
      _latestStories = List<StoryModel>.from(data.map((item) => StoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();    
  }

  fetchMissedStories() async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchMissedStories();
      _missedStories = List<StoryModel>.from(data.map((item) => StoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  fetchCategoryStories(String categoryId) async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchCategoryStories(categoryId);
      _topStories = List<StoryModel>.from(data.map((item) => StoryModel.fromJson(item)));
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  fetchSingleStory(String storyId) async {
    _isLoading = true;
    notifyListeners();
    try {
      final data = await _newsApiService.fetchSingleStory(storyId);
      _topStories = [StoryModel.fromJson(data)];
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }
  void clearError() {
    _error = null;
    notifyListeners();
  }
}
