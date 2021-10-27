import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'horizondal_slider.dart';

class second extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(5, 11, 24, 100),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 11, 24, 100),
          leading: Container(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.network(
                "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwcG9ydHJhaXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text("John"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: Stack(
          children: [
            Positioned(
                top: 10,
                left: 30,
                child: Text(
                  "Popular",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            horizondal(),
          ],
        ),
      ),
    );
  }
}
