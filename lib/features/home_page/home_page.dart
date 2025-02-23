import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testing/features/provider/theme_provider_controller.dart';
import '../provider/riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changer'),
        actions: [
          Switch(
            value: themeMode == ThemeMode.dark,
            onChanged: (value) {
              toggleTheme(ref);
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Current theme: ${themeMode == ThemeMode.dark ? "Dark" : "Light"}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
