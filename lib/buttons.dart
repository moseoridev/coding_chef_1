import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);
  void _show_snackbar(ctx, msg) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(msg)));
  }

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
              onPressed: () => _show_snackbar(context, 'pressed!'),
              child: Text(
                'Text Button',
                style: TextStyle(fontSize: 20),
              ),
              onLongPress: () => _show_snackbar(context, 'long pressed!'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                // backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
