import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp()); //void main()=> runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void sound(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded buildkey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          sound(num);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Center(
            child: Text("Xylophone"),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, num: 1),
              buildkey(color: Colors.orange, num: 2),
              buildkey(color: Colors.yellow, num: 3),
              buildkey(color: Colors.green, num: 4),
              buildkey(color: Colors.teal, num: 5),
              buildkey(color: Colors.blue, num: 6),
              buildkey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
