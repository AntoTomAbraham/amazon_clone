import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  String data;
  double size;
  Color colour;
  FontWeight fweight;
  Textwidget({
    this.data,
    this.size,
    this.colour,
    this.fweight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: new FractionalOffset(0.05, 0.9),
      child: Text(
        data,
        style: TextStyle(
          color: colour,
          fontSize: size,
          fontWeight: fweight != Null ? fweight : FontWeight.normal,
        ),
      ),
    );
  }
}
