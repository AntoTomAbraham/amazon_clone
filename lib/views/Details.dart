import 'package:amazon_app/widget/DetailWidget/DetailAd.dart';
import 'package:amazon_app/widget/DetailWidget/DetailCard.dart';
import 'package:amazon_app/widget/DetailWidget/Detailbrand.dart';
import 'package:amazon_app/widget/DetailWidget/Textwidget.dart';
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
              sBox(40),
              Detailbrand(),
              DetailCard(
                imagee: image,
                texta: text1,
                textb: text2,
                textc: text3,
                textd: text4,
              ),
              Textwidget(
                data: "In stock",
                size: 20,
                colour: Colors.green,
              ),
              sBox(20),
              Textwidget(
                data: "   sold by Vandelay technology and fullfilled by amazon",
                size: 15,
                colour: Colors.black,
              ),
              sBox(20),
              iconContainer(),
              sBox(20),
              addIconButton("Buy now", Colors.yellow),
              sBox(20),
              addIconButton("add to cart", Colors.orange)
            ],
          ),
        ));
  }

  Widget sBox(double size) {
    return SizedBox(
      height: size,
    );
  }

  Widget iconContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 308.0),
      child: Container(
        width: 50,
        //color: Colors.grey,
        decoration: BoxDecoration(
            color: Colors.white38,
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: <Widget>[
            Text("Qty : 1"),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget addIconButton(String data, Color colour) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: RaisedButton(
        onPressed: () {
          print('Button Clicked');
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(data),
        ),
        color: colour,
        textColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: colour, width: 2)),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    );
  }
}
