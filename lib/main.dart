import 'package:flutter/material.dart';
import 'package:coding_chef_1/screen_a.dart';
import 'package:coding_chef_1/screen_b.dart';
import 'package:coding_chef_1/screen_c.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
      darkTheme: ThemeData.dark(),
    );
  }
}
