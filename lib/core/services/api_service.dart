import 'package:newsapp/core/services/base__api_services';

class NewsApiService {
  final BaseApiService _apiService = BaseApiService();

  Future<dynamic> fetchTopStories() async {
    return await _apiService.getRequest('/top-stories');
  }

  Future<dynamic> fetchEditorsPicks() async {
    return await _apiService.getRequest('/editor-picks?page=1&per_page=15');
  }

  Future<dynamic> fetchFeaturedStories() async {
    return await _apiService.getRequest('/stories/featured-stories?page=1&per_page=15');
  }

  Future<dynamic> fetchLatestStories() async {
    return await _apiService.getRequest('/stories/latest-stories?page=1&per_page=7');
  }

  Future<dynamic> fetchMissedStories() async {
    return await _apiService.getRequest('/stories/missed-stories?page=1&per_page=5');
  }

  Future<dynamic> fetchCategories() async {
    return await _apiService.getRequest('/categories');
  }

  Future<dynamic> fetchCategoryStories(String categoryId) async {
    return await _apiService.getRequest('/categories/$categoryId/stories?page=1&per_page=15');
  }

  Future<dynamic> fetchSingleStory(String storyId) async {
    return await _apiService.getRequest('/stories/$storyId');
  }
}
