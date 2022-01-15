import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaffoldMessenger Demo'),
      ),
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text('New Snack Bar!'),
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
              label: 'Undo',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()))),
        )),
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Go to the 2nd page'),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondPage())),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text(
          '아래 좋아요 버튼을 눌러보세요.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Third Page'),
        ),
        body: Builder(builder: (context) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('좋아요를 취소하시겠습니까?'),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('좋아요가 취소되었습니다.')));
                  },
                  child: const Text('취소하기'))
            ],
          ));
        }),
      ),
    );
  }
}
