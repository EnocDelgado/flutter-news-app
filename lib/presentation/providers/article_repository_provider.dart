


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_news_app/infrastructure/datasource/article_datasource_impl.dart';
import 'package:ui_news_app/infrastructure/repository/article_repository_impl.dart';

final articleRepositoryProvider = Provider( ( ref ) {

  return ArticleRepositoryImpl( LocalArticleDatasource() );
});