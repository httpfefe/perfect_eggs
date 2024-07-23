import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  Future delay(context) async {
    await Future.delayed(
      const Duration(
        microseconds: 3000,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    delay(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: const FlareActor(
              "assets/animations/egg-cooking.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              isPaused: false,
              animation: 'start',
            ),
          ),
          const Text(
            "Perfect Eggs",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Montserrat",
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF4A460)),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
