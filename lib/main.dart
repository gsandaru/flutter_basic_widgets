import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10.0),
            Text(
              "Gihan Sandaru",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10.0),
            Text(
              "$ninjalevel",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 30.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "gihandevacc@gmail.com",
                  style: TextStyle(
                      color: Colors.grey[400], fontSize: 18, letterSpacing: 2),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        tooltip: "Increase Ninja Level",
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
