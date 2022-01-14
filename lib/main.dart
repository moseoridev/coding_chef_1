import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      title: 'Test App',
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Go to the 2nd page'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Go to the 1st page'),
          onPressed: () => Navigator.pop(context),
        )));
  }
}
