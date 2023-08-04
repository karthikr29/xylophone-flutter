import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer player = AudioPlayer();

  void playSound(int noteNumber) =>
      player.play(AssetSource('note$noteNumber.wav'));

  Expanded buildKey({required int noteNumber, required Color colorName}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colorName),
        ),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(noteNumber: 1, colorName: Colors.red),
              buildKey(noteNumber: 2, colorName: Colors.orange),
              buildKey(noteNumber: 3, colorName: Colors.yellow),
              buildKey(noteNumber: 4, colorName: Colors.green),
              buildKey(noteNumber: 5, colorName: Colors.teal),
              buildKey(noteNumber: 6, colorName: Colors.blue),
              buildKey(noteNumber: 7, colorName: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
