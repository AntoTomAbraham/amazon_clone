import 'package:amazon_app/widget/DealsCaursol.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(
          thickness: 4,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            alignment: new FractionalOffset(0.0, 0.7),
            color: Colors.white,
            child: Text(
              "Blockbuster Deals",
              style: GoogleFonts.catamaran(fontSize: 25),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            thickness: 2,
            color: Colors.grey[300],
          ),
        ),
        DealsCaursol(),
        Row(
          children: <Widget>[
            scrollImage(
                "https://m.media-amazon.com/images/I/71FDSqRpGtL._AC_SY400_.jpg"),
            scrollImage(
                "https://m.media-amazon.com/images/I/71jsnkx44xL._AC_SY400_.jpg"),
            scrollImage(
                "https://m.media-amazon.com/images/I/41LO2OX6pRL._AC_SY400_.jpg"),
            scrollImage(
                "https://m.media-amazon.com/images/I/61j17FjPhtL._AC_SY400_.jpg"),
          ],
        ),
        Container(
          alignment: new FractionalOffset(0.0, 0.6),
          child: Text(
            " See all deals",
            style: TextStyle(color: Colors.blue[300]),
          ),
        ),
        Divider(
          thickness: 4,
          color: Colors.grey[300],
        ),
        Container(
          alignment: new FractionalOffset(0.0, 0.6),
          child: Text(
            " Work from Home Products",
            style: GoogleFonts.catamaran(fontSize: 25),
          ),
        )
      ],
    );
  }

  Widget scrollImage(String image) {
    return Container(
      height: 100,
      width: 100,
      child: Image.network(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
