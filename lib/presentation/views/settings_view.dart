import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_news_app/presentation/providers/theme_provider.dart';

class SettingsView extends StatelessWidget {

  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: Theme.of( context ).textTheme.titleLarge ),
      ),
      body:  const _UiSettingsView(),
    );
  }
}

class _UiSettingsView extends ConsumerWidget {
  const _UiSettingsView();

  @override
  Widget build(BuildContext context, ref ) {

    final isDarkMode = ref.watch( themeNotifierProvider ).isDarkMode;

    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Dark Mode'),
          value: isDarkMode, 
          onChanged:  ( value ) {
            ref.read( themeNotifierProvider.notifier ).toggleDarkMode();
          },
        )
      ]
    );
  }
}