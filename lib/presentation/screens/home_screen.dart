import 'package:flutter/material.dart';
import 'package:ui_news_app/presentation/views/discover_view.dart';
import 'package:ui_news_app/presentation/views/home_view.dart';
import 'package:ui_news_app/presentation/views/settings_view.dart';
import 'package:ui_news_app/presentation/widgets/shared/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';
  final int pageIndex;

  const HomeScreen({
    super.key, 
    required this.pageIndex
  });

  final viewRoutes = const <Widget>[
    HomeView(),
    DiscoverView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: IndexedStack(
        index:  pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigationBar( currentIndex: pageIndex ),
    );
  }
}