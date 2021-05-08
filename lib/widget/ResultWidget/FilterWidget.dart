import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          filterContainer("Category"),
          filterContainer("Sort by:featured"),
        ],
      ),
    );
  }

  Widget filterContainer(String text) {
    return new Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: <Widget>[Text(text), Icon(Icons.arrow_drop_down)],
      ),
    );
  }
}
