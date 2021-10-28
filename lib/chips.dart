import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class ScrollableMultipleChip extends StatefulWidget {
  List<String> labels;

  ScrollableMultipleChip({this.labels = const []});

  @override
  _ScrollableMultipleChipState createState() => _ScrollableMultipleChipState();
}

class _ScrollableMultipleChipState extends State<ScrollableMultipleChip> {
  List<String> tags = [];
  List<String> options = [];

  @override
  void initState() {
    options = widget.labels;
  }

  @override
  Widget build(BuildContext context) {
    return ChipTheme(
      data: ChipTheme.of(context).copyWith(backgroundColor: Colors.lightBlue),
      child: ChipsChoice.multiple(
        spinnerColor: Colors.indigo,
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
      ),
    );
  }
}
