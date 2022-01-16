import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);
  void _show_snackbar(ctx, msg, [int dur = 1]) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      content: Text(msg),
      duration: Duration(seconds: dur),
    ));
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
            ),
            ElevatedButton(
              onPressed: () => _show_snackbar(context, 'Elevated Button', 6),
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 0,
              ),
            ),
            OutlinedButton(
              onPressed: () => _show_snackbar(context, 'Outlined Button'),
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.teal,
                  side: BorderSide(color: Colors.black87)),
            ),
            ElevatedButton.icon(
              onPressed: () => _show_snackbar(context, 'Icon Button'),
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.red,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                  primary: Colors.purple, minimumSize: Size(200, 50)),
            ),
            TextButton.icon(
              onPressed: () => _show_snackbar(context, 'Icon Button'),
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.red,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.red,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                  primary: Colors.purple, onSurface: Colors.pink),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(onPressed: () {}, child: Text('Text Button')),
                ElevatedButton(onPressed: () {}, child: Text('Elevated Button'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
