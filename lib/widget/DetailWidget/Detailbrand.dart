import 'package:flutter/material.dart';

class Detailbrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Brand:Apple",
            style: TextStyle(color: Colors.cyan[600]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "⭐️⭐️⭐️⭐️   11",
            style: TextStyle(color: Colors.cyan[600]),
          ),
        )
      ],
    );
  }
}
