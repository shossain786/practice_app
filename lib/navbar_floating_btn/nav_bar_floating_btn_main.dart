import 'package:flutter/material.dart';
import 'package:practice_app/main.dart';

import 'nav_bar_floating.dart';

var kColorScheme1 = ColorScheme.fromSeed(seedColor: Colors.blue);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          scaffoldBackgroundColor: kColorScheme.onPrimary,
          appBarTheme: AppBarTheme(
            color: kColorScheme1.onSecondaryContainer,
            foregroundColor: kColorScheme1.onSecondary,
            centerTitle: true,
            elevation: 5,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: kColorScheme1.onSecondaryContainer,
            selectedLabelStyle:
                TextStyle(color: kColorScheme1.onSecondaryContainer),
            unselectedLabelStyle:
                TextStyle(color: kColorScheme1.onSecondaryContainer),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: kColorScheme1.onPrimary,
            focusColor: kColorScheme1.onPrimaryContainer,
            splashColor: Colors.blue,
            hoverColor: Colors.blue.shade500,
          )),
      home: const MyNavBarPage(),
    );
  }
}
