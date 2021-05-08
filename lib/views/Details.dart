import 'package:amazon_app/widget/DetailWidget/DetailAd.dart';
import 'package:amazon_app/widget/DetailWidget/DetailCard.dart';
import 'package:amazon_app/widget/DetailWidget/Detailbrand.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  Details({
    @required this.image,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.text4,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[200],
          leading: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: null),
            ],
          ),
          title: Transform(
            // you can forcefully translate values left side using Transform
            transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
            //Container(
            // width: 90,
            // height: 42,
            child: Container(
              width: 90,
              height: 42,
              child: Image.network(
                "http://pngimg.com/uploads/amazon/amazon_PNG13.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.mic,
                  color: Colors.black,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
                onPressed: null),
          ],
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              DetailAd(),
              sBox(),
              Detailbrand(),
              DetailCard(
                imagee: image,
                texta: text1,
                textb: text2,
                textc: text3,
                textd: text4,
              ),
            ],
          ),
        ));
  }

  Widget sBox() {
    return SizedBox(
      height: 40,
    );
  }
}
