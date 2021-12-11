import 'package:flutter/material.dart';
import 'package:flutter_app/videoPlayer.dart';

import 'Available_organs.dart';

class kidney extends StatefulWidget {
  @override
  _kidneyState createState() => _kidneyState();
}

class _kidneyState extends State<kidney> {
  AppBar appBar = AppBar(

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Kidney View"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("assets/kidney.jpg"),
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
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VideoDemo("assets/function1.mp4", "Function of Kidney")));
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
                              MaterialPageRoute(builder: (context) => VideoDemo("assets/Acute disease.mp4", "Acute Kidney Disease")));
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VideoDemo("assets/removal.mp4", "Stone Removal")));
                        },
                        child: Center(child: Text("Stone Removal", style: TextStyle(fontSize: 22), textAlign: TextAlign.center,)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40), // <-- Radius
                          ),
                          minimumSize: Size(MediaQuery.of(context).size.width*0.7, MediaQuery.of(context).size.height * 0.07),
                        ),
                      ),
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
