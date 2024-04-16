import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/sfondo.jpg'), fit: BoxFit.cover, opacity: 0.8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.png'))),
                        ),
                  ),
            ),
          const SizedBox(height: 20),
            const Text(
              'ESPRIMI IL TUO\nPOTENZIALE!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                height: 1.3,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 55,
              width: 340,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/seconda');
                },
                child: const Text('Scopri la Palestra',style: TextStyle(fontSize: 23)),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 55,
              width: 340,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/terza');
                },
                child: const Text('Login',style: TextStyle(fontSize: 23)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
