import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$note.wav'),
    );
  }

  Expanded buildWidget({int sound, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildWidget(color: Colors.red, sound: 1),
                buildWidget(color: Colors.deepOrange, sound: 2),
                buildWidget(color: Colors.yellow, sound: 3),
                buildWidget(color: Colors.green, sound: 4),
                buildWidget(color: Colors.teal, sound: 5),
                buildWidget(color: Colors.blue, sound: 6),
                buildWidget(color: Colors.purple, sound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
