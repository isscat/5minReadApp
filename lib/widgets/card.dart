import 'package:DreamsApp/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  final Color picked;
  final double textSize;
  final Function ontextChanged;
  final String fieldText;
  final TextStyle fontFamily;

  CardScreen(
      {this.fontFamily,
      this.fieldText,
      this.ontextChanged,
      this.textSize,
      this.picked});

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final TextEditingController text = TextEditingController();

  int numLines = 1;

  void onTextChanged(String e) {
    int lines = '\n'.allMatches(e).length + 1;

    setState(() {
      if (lines > 12 && widget.textSize > 40)
        numLines = lines;
      else
        numLines = 200;
    });

    print(lines);
    print(widget.textSize);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: widget.picked,
        child: TextFormField(
          initialValue: widget.fieldText,
          decoration: InputDecoration(border: InputBorder.none),
          maxLines: 12,
          maxLength: numLines,
          style: widget.fontFamily,
          onChanged: (value) => onTextChanged(value),
        ),
      ),
    );
  }
}
