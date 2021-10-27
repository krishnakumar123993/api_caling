import 'package:chips_choice/chips_choice.dart';
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
    return ChipsChoice.multiple(
      value: tags,
      onChanged: (val) => setState(() => tags = val),
      choiceItems: C2Choice.listFrom<String, String>(
        source: options,
        value: (i, v) => v,
        label: (i, v) => v,
      ),
      choiceStyle: C2ChoiceStyle(
        showCheckmark: false,
      ),
      choiceActiveStyle: C2ChoiceStyle(
        color: Colors.deepPurple,
      ),
    );
  }
}