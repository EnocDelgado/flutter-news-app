

import 'package:ui_news_app/domain/domain.dart';

class ArticleRepositoryImpl extends ArticleRepository {

  // main origin data
  final ArticleDatasource datasource;

  // Any artiloces its allow
  ArticleRepositoryImpl( this.datasource );

  @override
  Future<Article> getArticleId(String id) {
    return datasource.getArticleId( id );
  }

  @override
  Future<List<Article>> getArticles({ int page = 1 }) {
    return datasource.getArticles( page );
  }

}