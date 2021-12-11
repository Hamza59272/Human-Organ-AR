import 'package:flutter/material.dart';
import 'package:flutter_app/videoPlayer.dart';

import 'Available_organs.dart';

class stomach extends StatefulWidget {
  @override
  _stomachState createState() => _stomachState();
}

class _stomachState extends State<stomach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Stomach view"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("assets/stomach.jpg"),
                fit: BoxFit.fill,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VideoDemo("assets/function2.mp4", "Stomach Function")));
                        },
                        child: Center(child: Text("Functionality", style: TextStyle(fontSize: 22), textAlign: TextAlign.center,)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40), // <-- Radius
                          ),
                          minimumSize: Size(MediaQuery.of(context).size.width*0.7, MediaQuery.of(context).size.height * 0.07),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VideoDemo("assets/diseaseS.mp4", "Stomach Disease")));
                        },
                        child: Center(child: Text("Disease", style: TextStyle(fontSize: 22), textAlign: TextAlign.center,)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40), // <-- Radius
                          ),
                          minimumSize: Size(MediaQuery.of(context).size.width*0.7, MediaQuery.of(context).size.height * 0.07),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),

                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.9,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
