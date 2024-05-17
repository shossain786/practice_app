import 'package:flutter/material.dart';

import 'text_libs/use_linkify.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.redAccent);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: kColorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.onPrimaryContainer,
          centerTitle: true,
          foregroundColor: kColorScheme.onSecondary,
          titleTextStyle: const TextStyle(
            letterSpacing: 1.8,
            wordSpacing: 2.8,
            fontSize: 22,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        scaffoldBackgroundColor: kColorScheme.onSecondary.withOpacity(0.8),
      ),
      home: const LinkiFy(),
    );
  }
}
