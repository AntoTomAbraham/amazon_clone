import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class DealsCaursol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.0,
        width: 300.0,
        child: Carousel(
          images: [
            Container(
                height: 150,
                child: caursolContainer(
                    "https://m.media-amazon.com/images/I/41LO2OX6pRL._AC_SY400_.jpg")),
            Container(
                height: 150,
                child: caursolContainer(
                    "https://m.media-amazon.com/images/I/71jsnkx44xL._AC_SY400_.jpg")),
            Container(
                height: 150,
                child: caursolContainer(
                    "https://m.media-amazon.com/images/I/71FDSqRpGtL._AC_SY400_.jpg")),
            Container(
                height: 150,
                child: caursolContainer(
                    "https://m.media-amazon.com/images/I/61j17FjPhtL._AC_SY400_.jpg"))
          ],
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.white,
          indicatorBgPadding: 8.0,
          dotBgColor: Colors.transparent,
          borderRadius: false,
        ));
  }

  Widget caursolContainer(String image) {
    return Column(children: <Widget>[
      Image.network(
        image,
        fit: BoxFit.contain,
      ),
      Container(
        child: Text("Console under INR 3000 No cost EMI"),
        alignment: new FractionalOffset(0.0, 0.9),
      ),
      Container(
        alignment: new FractionalOffset(0.0, 0.9),
        child: Text(
          "23,999 -42,999",
          style: TextStyle(fontSize: 15),
        ),
      ),
      Container(
        alignment: new FractionalOffset(0.0, 0.9),
        child: Text(
          "Ends in 13:59:00",
          style: TextStyle(fontSize: 15),
        ),
      )
    ]);
  }
}
