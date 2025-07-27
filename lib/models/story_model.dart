class StoryModel {
  final int id;
  final String title;
  final String? excerpt;
  final String? content;
  final String? image;
  final String? author;
  final String? createdAt;
  final int? categoryId;
  final String? categoryName;

  StoryModel({
    required this.id,
    required this.title,
    this.excerpt,
    this.content,
    this.image,
    this.author,
    this.createdAt,
    this.categoryId,
    this.categoryName,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    return StoryModel(
      id: json['id'],
      title: json['title'] ?? '',
      excerpt: json['excerpt'],
      content: json['content'],
      image: json['image'],
      author: json['author'] ?? 'Unknown',
      createdAt: json['created_at'],
      categoryId: json['category_id'],
      categoryName: json['category_name'],
    );
  }
}
/*
id: Story ID.
title: Story title.
excerpt: Short summary of the story.
content: Full content of the story.
image: URL of the story's image.
author: Author of the story.
createdAt: Timestamp of when the story was created.
categoryId: ID of the category this story belongs to.
categoryName: Name of the category this story belongs to.
*/

/*
// lib/models/news_model.dart

import 'category_model.dart';

class NewsModel {
  final String id;
  final String title;
  final String summary;
  final String imageUrl;
  final CategoryModel category;
  final DateTime createdAt;

  NewsModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.imageUrl,
    required this.category,
    required this.createdAt,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      summary: json['summary'] ?? '',
      imageUrl: json['image_url'] ?? '',
      category: CategoryModel.fromJson(json['category']),
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
*/