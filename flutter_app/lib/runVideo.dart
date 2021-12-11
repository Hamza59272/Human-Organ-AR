import 'package:flutter/material.dart';
import 'package:flutter_app/videoPlayer.dart';

void main() => runApp(run());
class run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: running()
    );
  }
}

class running extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
            child: Text(
              "press",
            ),
            onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoDemo("assets/function1.mp4", "kidney"))),
          )
      ),
    );
  }

}
