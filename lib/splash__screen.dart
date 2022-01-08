import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(157, 11, 39, 1.0),
              Color.fromRGBO(90, 8, 45, 1.0),
              Color.fromRGBO(51, 3, 13, 1.0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Al Ahly ',
              style:
                  TextStyle(fontSize: 45, color: Colors.orangeAccent, shadows: [
                Shadow(
                  offset: Offset(2, 2),
                )
              ]),
            ),
            Image.asset(
              'assets/ahlylogo.png',
              fit: BoxFit.contain,
              width: 300,
              height: 410,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    textStyle: TextStyle(fontSize: 20),
                    onPrimary: Colors.white),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return TestPage();
                  }));
                },
                child: Text('lat\'s go '))
          ],
        ),
      ),
    );
  }
}
