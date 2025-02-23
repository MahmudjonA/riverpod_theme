import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile page'),
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
