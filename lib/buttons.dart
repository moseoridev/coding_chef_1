import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('text button'))),
              child: Text(
                'Text Button',
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(primary: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
