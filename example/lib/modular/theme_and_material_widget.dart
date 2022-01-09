import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mock_theme_management/mock_theme_management.dart';

class ThemeAndMaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _materialAppBloc(Locale('en'));
  }

  /// Widget wrapper to enclose switching dark/light mode themes of the MaterialApp
  Widget _materialAppBloc(Locale? locale) {
    return BlocBuilder<MockThemeModeCubit, ThemeModeState>(
        bloc: MockThemeModeCubit(),
        builder: (_, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            locale: locale,
            theme: MockThemeManagement.lightTheme,
            darkTheme: MockThemeManagement.darkTheme,
            themeMode: MockThemeManagement.themeMode,
            initialRoute: '/',
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('de'), // German, no country code
              const Locale('en'), // English, no country code
              const Locale('es'), // Spanish, no country code
            ],
          ).modular();
        });
  }
}
