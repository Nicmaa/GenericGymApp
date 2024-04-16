import 'package:flutter/material.dart';

class Scheda extends StatefulWidget {
  const Scheda({super.key, required this.title});

  final String title;

  @override
  State<Scheda> createState() => SchedaState();
}

class SchedaState extends State<Scheda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cactu.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  _buildDayCard('GIORNO 1', [
                    'Squat: 3x12',
                    'Panca piana: 4x8',
                    'Rematore con bilanciere: 3x10',
                    'Leg curl: 4x10-12',
                    'Shoulder press: 3x8',
                  ]),
                  _buildDayCard('GIORNO 2', [
                    'Stacchi da terra: 3x10',
                    'Military press: 4x8',
                    'Curl con manubri: 3x12',
                    'Lat pulldown: 5x6-8',
                    'Tricep pushdown: 2x10',
                  ]),
                  _buildDayCard('GIORNO 3', [
                    'Affondi: 3x10+10',
                    'Pull-up: 5xMAX',
                    'Push-up: 3x12-15',
                    'Leg extension: 4x8',
                    'Bent over row: 3x6',
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDayCard(String title, List<String> exercises) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: exercises
                .map((exercise) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        exercise,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
