import 'package:armino/scroll_chip.dart';
import 'package:flutter/material.dart';

import 'chips.dart';

class horizondal extends StatefulWidget {
  @override
  _horizondalState createState() => _horizondalState();
}

class _horizondalState extends State<horizondal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 11, 24, 100),
      body: Column( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.1)),
              // margin: const EdgeInsets.symmetric(horizontal:.0),
              padding: EdgeInsets.all(10),
              height: 325.0,
              child: GridView.builder(
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2/2.6,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(40),
                itemCount: 2,
                itemBuilder: (BuildContext, intex) {
                  return Container(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            "https://www.playstationlifestyle.net/assets/uploads/2021/10/Riders-Republic-1280x720.png",
                            fit: BoxFit.cover,
                            width: 280,
                            height: 230,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "For Cry",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.deepPurple,
                                size: 30,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(bottom: Radius.circular(15)),
                            color: Colors.blueGrey[900],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),

          ),
          Container(width: double.infinity,height: 1,color: Colors.grey[800],),
          // Chip(label: Text("hell"))
          ScrollableMultipleChip()
        ],
      ),
    );
  }
}
