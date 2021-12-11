import 'package:flutter/material.dart';
import 'kidney.dart';
import 'stomach.dart';

class Available_organs extends StatefulWidget {
  @override
  _Available_organsState createState() => _Available_organsState();
}

class _Available_organsState extends State<Available_organs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Available organs"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("assets/bgImage.jpg"),
                fit: BoxFit.fill,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop)),
          ),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white54,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 25)),
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Choose An Organ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
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
                              MaterialPageRoute(builder: (context) => kidney()));
                        },
                        child: Center(child: Text("Kidney", style: TextStyle(fontSize: 22), textAlign: TextAlign.center,)),
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
                              MaterialPageRoute(builder: (context) => stomach()));
                        },
                        child: Center(child: Text("Stomach", style: TextStyle(fontSize: 22), textAlign: TextAlign.center,)),
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
                height: MediaQuery.of(context).size.height,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
