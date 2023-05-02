// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    void playSound(int n) async {
      await player.play(AssetSource('note$n.wav'));
    }

    Expanded buildKey({required color, required int n}) {
      return Expanded(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)
          ),
          onPressed: () {
            playSound(n);
          },
          child: Text(''),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple, n: 1),
              buildKey(color: Colors.blue, n: 2),
              buildKey(color: Colors.green, n: 3),
              buildKey(color: Colors.yellow, n: 4),
              buildKey(color: Colors.red, n: 5),
              buildKey(color: Colors.teal, n: 6),
              buildKey(color: Colors.orange, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
