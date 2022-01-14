import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/b'),
            child: Text('Go to Screen B'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/c'),
            child: Text('Go to Screen C'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
          )
        ],
      )),
    );
  }
}
