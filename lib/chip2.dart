import 'package:flutter/material.dart';

class ScrollableMultipleChip1 extends StatefulWidget {
  @override
  _ScrollableMultipleChipState createState() => _ScrollableMultipleChipState();
}

class _ScrollableMultipleChipState extends State<ScrollableMultipleChip1> {
  List<String> tags = [];
  List<String> options = [
    'All',
    'Play Station',
    'Nintendo',
    'X-Box',
    'Pc',
    'Stream',
    'Stadia',
  ];


  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: <Widget>[
        _buildChip('Gamer', Color(0xFFff6666),1),
        _buildChip('Action', Color(0xFFff6666),2),
        _buildChip('Adventure', Color(0xFFff6666),3),
        _buildChip('puzzle', Color(0xFFff6666),4),
        _buildChip('Gamer', Color(0xFFff6666),5),

      ],
    );
  }
  int _choiceIndex;
  bool _isSelected;
  @override
  void initState() {
    _choiceIndex = 0;
    _isSelected = false;

  }

  Widget _buildChip(String label, Color color, index) {
    return ChoiceChip(selected: _choiceIndex == index,
      selectedColor:Colors.deepPurple,
      pressElevation: 20,
      selectedShadowColor: Colors.deepPurple,
      onSelected: (bool selected) {
        setState(() {
          _choiceIndex = selected ? index : 0;
        });
      },
      labelPadding: EdgeInsets.all(2.0),
      avatar: Icon(Icons.bolt,color: Colors.grey,),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }
}



class ScrollableMultipleChip2 extends StatefulWidget {
  List<String> options;

  @override
  _ScrollableMultipleChipState2 createState() => _ScrollableMultipleChipState2();

  ScrollableMultipleChip2(
      {this.options = const [
        'All',
        'Play Station',
        'Nintendo',
        'X-Box',
        'Pc',
        'Stream',
        'Stadia',
      ]});
}

class _ScrollableMultipleChipState2 extends State<ScrollableMultipleChip2> {
  List<String> tags = [];

  List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: list,
    );
  }

  int _choiceIndex;
  bool _isSelected;

  @override
  void initState() {
    _choiceIndex = 0;
    _isSelected = false;

    list = widget.options.map((element) {
      return _buildChip(element, Color(0xFFff6666), widget.options.indexOf(element)+1);
    }).toList();
  }

  Widget _buildChip(String label, Color color, index) {
    return ChoiceChip(
      selected: _choiceIndex == index,
      selectedColor: Colors.deepPurple,
      pressElevation: 20,
      selectedShadowColor: Colors.deepPurple,
      onSelected: (bool selected) {
        setState(() {
          _choiceIndex = selected ? index : 0;
        });
      },
      labelPadding: EdgeInsets.all(2.0),
      avatar: Icon(
        Icons.bolt,
        color: Colors.grey,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }
}
