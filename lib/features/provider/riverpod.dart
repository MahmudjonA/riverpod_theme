import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testing/features/provider/theme_provider_controller.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());
