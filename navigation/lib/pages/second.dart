import 'package:flutter/material.dart';

import 'third.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page 2',
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/dart.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Go back',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Go to Page 3',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
