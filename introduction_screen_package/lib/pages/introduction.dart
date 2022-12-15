import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset(
              "assets/lottie/first.json",
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
        ),
        PageViewModel(
          title: "Title of second page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset(
              'assets/lottie/second.json',
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
        ),
        PageViewModel(
          title: "Title of third page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset(
              "assets/lottie/third.json",
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          footer: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: const Text("Let's Go !"),
          ),
        ),
      ],
      showSkipButton: true,
      skip: const Text('Skip'),
      onSkip: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      showNextButton: true,
      next: const Text('Next'),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    ); //Material App
  }
}
