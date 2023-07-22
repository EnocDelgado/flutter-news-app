

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_news_app/config/config.dart';

final isDarkMordeProvider = StateProvider<bool>( ( ref ) => false );


// Apptheme Custom Object
final themeNotifierProvider = StateNotifierProvider<ThemeController, AppTheme>( ( ref ) => ThemeController() );

// Notifier
class ThemeController extends StateNotifier<AppTheme> {

  ThemeController(): super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }
}