import 'package:flutter/material.dart';
import '../audio.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Audio.play(Song.MENU);
    return Center(
      child: Column(
        children: [
          Text('HELLO'),
          FlatButton(
            child: Text('Start New Game'),
            onPressed: () => Navigator.of(context).pushNamed('/start'),
          ),
          FlatButton(
            child: Text('Resume Game'),
            onPressed: () => Navigator.of(context).pushNamed('/resume'),
          ),
          FlatButton(
            child: Text('Sound On/Off'),
            onPressed: () => Audio.pause(),
          ),
          FlatButton(
            child: Text('Credits'),
            onPressed: () => Navigator.of(context).pushNamed('/credits'),
          ),
        ],
      ),
    );
  }
}