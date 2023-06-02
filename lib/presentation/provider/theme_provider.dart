import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmode = StateProvider<bool>((ref) => true);

// listado de colores que no cambiaran
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

// objeto de tipo AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // state= new AppTheme
  ThemeNotifier() : super(AppTheme());
  void toggledarkmode() {
    state = state.copyWith(darkMode: !state.darkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
