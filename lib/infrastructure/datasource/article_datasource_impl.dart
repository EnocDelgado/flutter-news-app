

import 'package:ui_news_app/domain/domain.dart';
import 'package:ui_news_app/infrastructure/models/local_data_model.dart';
import 'package:ui_news_app/shared/shared.dart';

class LocalArticleDatasource extends ArticleDatasource {
  @override
  Future<Article> getArticleId(String id) async {

    // await Future.delayed( const Duration( seconds:  2) );

    // final List<Article> articlesId = articles.map(
    //   ( article ) => LocalArticles.fromJsonMap( article ).toArticles() 
    // ).toList();

    // return articlesId;

    throw UnimplementedError();
  }

  @override
  Future<List<Article>> getArticles(int page) async {
    
    await Future.delayed( const Duration( seconds:  2) );

    final List<Article> newArticles = articles.map(
      ( article ) => LocalArticles.fromJsonMap( article ).toArticles() 
    ).toList();

    return newArticles;
  }

}