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
        bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.green,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.yellow))),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            backgroundColor: Color.fromRGBO(5, 11, 24, 100),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined,color: Colors.white,), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border,color: Colors.white,), label: "home"),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(5, 11, 24, 100),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 11, 24, 100),
          leading: Container(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.network(
                "https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg",
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
            HomePage(),
          ],
        ),
      ),
    );
  }
}
