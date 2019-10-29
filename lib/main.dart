import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundwav(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildkey({Color color, int soundKey}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundwav(soundKey);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color: Colors.red, soundKey: 1),
                buildkey(color: Colors.orange, soundKey: 2),
                buildkey(color: Colors.yellow, soundKey: 3),
                buildkey(color: Colors.green, soundKey: 4),
                buildkey(color: Colors.blue, soundKey: 5),
                buildkey(color: Colors.indigo, soundKey: 6),
                buildkey(color: Colors.indigo[700], soundKey: 7),
                buildkey(color: Colors.pink[600], soundKey: 1)
              ]),
        ),
      ),
    );
  }
}
