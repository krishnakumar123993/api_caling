import 'package:armino/chip2.dart';
import 'package:armino/scroll_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_card.dart';
import 'chips.dart';

class HomePage extends StatefulWidget {
  @override
  _horizondalState createState() => _horizondalState();
}

class _horizondalState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 11, 24, 100),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[800],
            ),
            Container(margin: EdgeInsets.only(left: 25,top: 20),
              width: double.infinity,
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ScrollChip(),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[800],
            ),
            // Chip(label: Text("hell"))
            ScrollableMultipleChip(
              labels: [
                'All',
                'Play Station',
                'Nintendo',
                'X-Box',
                'Pc',
                'Stream',
                'Stadia',
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ScrollableMultipleChip1()),
            // ScrollChip(direction: Axis.vertical,gapRatio: 1.5/1,),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              width: double.infinity,
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                bigcard(title: "ForCry 6",optionNames: ["12 feb 2021","Action","Adventure"],),
                bigcard(title: "Riders Republic",imageUrl: "https://upload.wikimedia.org/wikipedia/en/8/8d/Riders_Republic_cover_art.jpg",optionNames: ["12 feb 2021","Action","Adventure"],),
                bigcard(title: "ForCry 6",optionNames: ["12 feb 2021","Action","Adventure"],),
                bigcard(title: "Riders Republic",imageUrl: "https://upload.wikimedia.org/wikipedia/en/8/8d/Riders_Republic_cover_art.jpg",optionNames: ["12 feb 2021","Action","Adventure"],),

              ],
            )
          ],
        ),
      ),
    );
  }
}
