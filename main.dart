import 'package:genericgymapp/palestra.dart';
import 'package:genericgymapp/scheda.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      theme: ThemeData(
        textTheme: GoogleFonts.bebasNeueTextTheme(),
        fontFamily: GoogleFonts.bebasNeue().fontFamily,
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(177, 10, 134, 16)),
          side: MaterialStatePropertyAll(BorderSide(width: 1, color: Colors.white)),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Home'),
        '/seconda': (context) => const Palestra(title: 'Palestra'),
        '/terza': (context) => const LoginPage(title: 'Log In'),
        '/quarta': (context) => const Scheda(title: 'Scheda'),
      },
    );
  }
}
