import 'package:genericgymapp/orari.dart';
import 'package:flutter/material.dart';

class Palestra extends StatefulWidget {
  const Palestra({super.key, required this.title});

  final String title;

  @override
  State<Palestra> createState() => PalestraState();
}

class PalestraState extends State<Palestra> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/cactu.jpg'),fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 20,
              child:
                IconButton(onPressed: () { Navigator.pushNamed(context, '/');}, icon: const Icon(Icons.arrow_back_rounded)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 210, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Color.fromARGB(250,116,156,87)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
                      child: Text('ORARI DELLA PALESTRA:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 10),
                    const Orari(),
                    const SizedBox(height: 20),
                    const Text('DOVE SIAMO?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Image(width: MediaQuery.of(context).size.width,image: const AssetImage('assets/images/maps.png')),
                    const Padding(padding: EdgeInsets.all(8)),
                    const Text('Via XXX, 440XX, XXXXX',style: TextStyle(fontSize: 15),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
