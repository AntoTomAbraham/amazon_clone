import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: new FractionalOffset(0.0, 0.9),
              child: Text(
                "RESULTS",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
            Divider(thickness: 1, color: Colors.grey[200]),
          ],
        ),
      ),
    );
  }
}
