import 'package:flutter/material.dart';
import 'package:theme_app/constants_theme.dart';
import 'package:theme_app/generated/l10n.dart';
import 'package:theme_app/homescreen.dart';
import 'package:theme_app/theme_manager.dart';
import 'package:intl/intl.dart';


import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeManager themeManager =ThemeManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      title: 'Simple Theme App',
       localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      theme: lightTheme,
      darkTheme: darkTheme ,
      themeMode: themeManager.themeMode, // Switch theme
      home: HomeScreen(themeManager: themeManager)
    );
  }
}

bool isArabic(){
  return Intl.getCurrentLocale()=='ar' ;
}

