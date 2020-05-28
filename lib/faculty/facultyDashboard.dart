import 'package:flutter/material.dart';
import 'package:hacknu2/faculty/createproject.dart';

class FacultyDashboard extends StatefulWidget {
  @override
  _FacultyDashboard createState() => _FacultyDashboard();
}

class _FacultyDashboard extends State<FacultyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Faculty Dashboard',
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ),
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
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateProject()));
                    });

                  },
                  child: Text(
                    "Create Project",
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

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.colour,
    this.cardChild,
    this.onPress,
  });

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}