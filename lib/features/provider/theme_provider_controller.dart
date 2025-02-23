import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testing/features/provider/riverpod.dart';

void toggleTheme(WidgetRef ref) {
  final isDarkMode = ref.read(themeProvider) == ThemeMode.dark;
  ref.read(themeProvider.notifier).state =
      isDarkMode ? ThemeMode.light : ThemeMode.dark;
}
