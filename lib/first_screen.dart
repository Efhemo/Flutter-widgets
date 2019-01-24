import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First APP",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Material(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Center(
                    child: Image.asset(
                      "images/femi.jpg",
                      width: 250.0,
                      height: 250.0,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 24.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 24.0,
                    child: Padding(
                      padding: EdgeInsets.all(36.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("adegbite oluwafemi", textAlign: TextAlign.start,
                              style: TextStyle(fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("07065256580", textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black)),
                          Text("adegbitefemisamson@gmail.com",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black)),
                          Container(
                              margin: EdgeInsets.only(top: 16.0),
                              width: 150.0,
                              child: RaisedButton(
                                color: Colors.blueAccent,
                                elevation: 8.0,
                                child: Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  showDialog(context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Edit Profile"),
                                          content: Text(
                                              "Name: Adegbite femi samson"),);
                                      }
                                  );
                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var randow = Random();
    int number = randow.nextInt(10);

    return "your lucky number is $number";
  }
}
