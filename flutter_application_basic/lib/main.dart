import 'package:flutter/material.dart';
import 'package:flutter_application_basic/pages/home_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(new Up2App());
}

class Up2App extends StatelessWidget {
  // login page parameters:
  // primary swatch color
  static const primarySwatch = Colors.orange;
  // button color
  static const buttonColor = Colors.orange;
  // app name
  static const appName = 'My first application';
  // boolean for showing home page if user unverified
  static const homePageUnverified = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My first application',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ru'),
      ],
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.indigoAccent),
          backgroundColor: Colors.white),
      home: HomePage(),
    );
  }
}
