import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArticleScreen extends ConsumerStatefulWidget {

  static const name = 'article-screen';

  final String id;

  const ArticleScreen({
    super.key, 
    required this.id
  });

  @override
  ArticleScreenState createState() => ArticleScreenState();
}

class ArticleScreenState extends ConsumerState<ArticleScreen> {

  @override
  void initState() {
    super.initState();

    // request
  
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}