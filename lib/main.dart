import 'package:flutter/material.dart';
import 'package:coding_chef_1/buttons.dart';
import 'package:coding_chef_1/snackbar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        '/': (context) => FirstScreen(),
        '/buttons': (context) => MyButtons(),
        '/snackbar': (context) => SnackBarDemo(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Learning Flutter'),
        ),
        body: Center(
          child: ListView(
            children: [
              ElevatedButton(
                child: Text('New Buttons'),
                onPressed: () {
                  Navigator.pushNamed(context, '/buttons');
                },
              ),
              ElevatedButton(
                child: Text('SnackBar Demo'),
                onPressed: () {
                  Navigator.pushNamed(context, '/snackbar');
                },
              ),
            ],
            padding: EdgeInsets.all(10),
          ),
        ));
  }
}
