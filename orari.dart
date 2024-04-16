import 'package:flutter/material.dart';

TextStyle txtTab = const TextStyle(fontWeight: FontWeight.bold);
EdgeInsets tab = const EdgeInsets.all(13);

class Orari extends StatelessWidget {
  const Orari({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
            border:TableBorder.all(color: Colors.black, width: 1),
            children: [
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Lunedì', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('08-21', style: txtTab),),
               ]
              ),
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Martedì', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('08-21', style: txtTab),),
               ]
              ),
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Mercoledì', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('08-21', style: txtTab),),
               ]
              ),
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Giovedì', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('08-21', style: txtTab),),
               ]
              ),
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Venerdì', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('08-21', style: txtTab),),
               ]
              ),
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Sabato', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('09:30-12', style: txtTab),),
               ]
              ),
              TableRow(
                children: [
                  Padding(padding: tab,
                  child:Text('Domenica', style: txtTab),),
                  Padding(padding: tab,
                  child:Text('Chiuso', style: txtTab),),
               ]
              ),
            ],
          );
  }
}
