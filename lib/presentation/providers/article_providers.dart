

// import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_news_app/domain/entity/article.dart';
// import 'package:ui_news_app/domain/repository/article_repository.dart';
import 'package:ui_news_app/presentation/providers/article_repository_provider.dart';

// class ArticleProvider extends ChangeNotifier {

//   final ArticleRepository articlesRepository;

//   bool initialLoading = true;
//   List<Article> articles = [];

//   ArticleProvider({
//     required this.articlesRepository
//   });

//   Future<void> laodNestPage() async {

//     final newArticles = await articlesRepository.getArticles(page: );

//     articles.addAll( newArticles );

//     initialLoading = false;

//     notifyListeners();
//   }
// }

final getArticles = StateNotifierProvider<ArticleNotifier, List<Article>>( ( ref ) {

  final getArticles = ref.watch( articleRepositoryProvider ).getArticles;

  return ArticleNotifier(getArticles: getArticles);
});

typedef ArticleCallback = Future<List<Article>> Function({ int page });

class ArticleNotifier extends StateNotifier<List<Article>> {

  int currentPage = 0;
  bool isLoading = false;
  ArticleCallback getArticles;

  ArticleNotifier({
    required this.getArticles
  }): super([]);

  Future<void> loadNextArticle() async {

    if ( isLoading ) return;

    isLoading = true;

    currentPage++;

    final List<Article> articles = await getArticles( page: currentPage );

    state = [ ...state, ...articles ];
    
    isLoading = false;

  }
}