import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class StudentDashBoard extends StatefulWidget {
  @override
  _StudentDashBoardState createState() => _StudentDashBoardState();
}

class _StudentDashBoardState extends State<StudentDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Center(
            child: Text(
          'Student Dashboard',
          style: TextStyle(color: Colors.black, fontSize: 30.0),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: new SizedBox(
                width: 400,
                height: 140,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Join Project",
                    style: TextStyle(
                      fontSize: 38.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: new SizedBox(
                width: 400,
                height: 140,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {},
                  child: Text(
                    "View Projects",
                    style: TextStyle(
                      fontSize: 38.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: new SizedBox(
                width: 400,
                height: 140,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {},
                  child: Text(
                    "History",
                    style: TextStyle(
                      fontSize: 38.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}