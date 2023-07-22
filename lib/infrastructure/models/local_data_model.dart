import 'package:ui_news_app/domain/domain.dart';

class LocalArticles {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const LocalArticles({
    required this.id,
    required this.title, 
    required this.subtitle, 
    required this.body, 
    required this.author, 
    required this.authorImageUrl, 
    required this.category,
    required this.imageUrl,
    required this.views, 
    required this.createdAt
  });

  factory LocalArticles.fromJsonMap( Map<String, dynamic>json ) => LocalArticles(
    id: json['id'] ?? 'no-data', 
    title: json['title'] ?? 'no-data', 
    subtitle: json['subtitle'] ?? 'no-data', 
    body: json['body'] ?? 'no-data', 
    author: json['author'] ?? 'no-data', 
    authorImageUrl: json['authorImageUrl'] ?? 'no-data', 
    category: json['category'] ?? 'no-data', 
    imageUrl: json['imageUrl'] ?? 'no-data', 
    views: json['views'] ?? '0', 
    createdAt: json['createdAt'] ?? 'no-date'
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "subtitle": subtitle,
    "body": body,
    "author": author,
    "authorImageUrl": authorImageUrl,
    "category": category,
    "imageUrl": imageUrl,
    "views": views,
    "createdAt": createdAt
  };

  Article toArticles() => Article(
    id: id, 
    title: title, 
    subtitle: subtitle, 
    body: body, 
    author: author, 
    authorImageUrl: authorImageUrl, 
    category: category, 
    imageUrl: imageUrl, 
    views: views, 
    createdAt: createdAt
  );
}