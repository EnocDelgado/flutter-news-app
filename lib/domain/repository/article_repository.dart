
import 'package:ui_news_app/domain/entity/article.dart';

abstract class ArticleRepository {

  Future<Article> getArticleId( String id );

  Future<List<Article>> getArticles({ int page });
}