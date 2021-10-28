import 'package:armino/chip2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bigcard extends StatefulWidget {
  String imageUrl;
  String title;
  List<String> optionNames;
  bigcard(
      {Key key,this.optionNames =const ["hai","hello","how r u"],this.title = "title",
      this.imageUrl =
          "https://cdn1.epicgames.com/b4565296c22549e4830c13bc7506642d/offer/TETRA_PREORDER_STANDARD%20EDITION_EPIC_Store_Portrait_1200x1600-1200x1600-ca8b802ff13813c37a44ebf68d0946a2.png"})
      : super(key: key);

  @override
  _bigcardState createState() => _bigcardState();
}

class _bigcardState extends State<bigcard> {
  @override
  Widget build(BuildContext context) {

    return Container(margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.cover,
              width: 328,
              height: 300,
            ),
          ),
          Container(
            height: 110,
            width: 328,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
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
                SingleChildScrollView(scrollDirection: Axis.horizontal,child: ScrollableMultipleChip2(options: widget.optionNames,)),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              color: Colors.blueGrey[900],
            ),
          ),
        ],
      ),
    );
  }
}
