
import 'package:flutter/material.dart';

class ScrollChip extends StatefulWidget {

  var direction;
  var gapRatio;
  ScrollChip({Key key,this.direction = Axis.horizontal,this.gapRatio =  2/2.6}) : super(key: key);

  @override
  _ScrollChipState createState() => _ScrollChipState();
}

class _ScrollChipState extends State<ScrollChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.1)),
      // margin: const EdgeInsets.symmetric(horizontal:.0),
      height: 280.0,
      child: GridView.builder(
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: widget.gapRatio,
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        scrollDirection: widget.direction,
        padding: EdgeInsets.all(30),
        itemCount: 2,
        itemBuilder: (BuildContext, intex) {
          return CardChip();
        },
      ),

    );
  }
}

class CardChip extends StatelessWidget {
  const CardChip({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
