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
              addIconButton("add to cart", Colors.orange),
              sBox(20),
              iconWittext(Icons.lock, "Secure transaction"),
              sBox(15),
              iconWittext(Icons.location_on, "Deliver to XYZ - Kochi 67543"),
              sBox(20),
              Textwidget(
                  data: "ADD TO WISH LIST", size: 15, colour: Colors.cyan),
              sBox(10),
              sBox(10),
              greyDivider(),
              iconRow(),
              sBox(10),
              greyDivider(),
              sBox(10),
              Textwidget(data: "SELL ON AMAZON", size: 15, colour: Colors.cyan),
              sBox(20),
              greyDivider(),
              Textwidget(
                data: "Details",
                size: 18,
                colour: Colors.black,
                fweight: FontWeight.bold,
              ),
              sBox(10),
              smalTexRaw("Brand", "Vandelay"),
              sBox(10),
              smalTexRaw("Material", "Plastic"),
              sBox(10),
              smalTexRaw("Colour", "Grey"),
              sBox(10),
              smalTexRaw("Item Dimensions", "5.5 X 4 X 3 Centimeters"),
              sBox(20),
              Textwidget(
                data: "You might also like",
                size: 23,
                colour: Colors.black,
                fweight: FontWeight.bold,
              ),
              Textwidget(
                data: "Sponsored",
                size: 10,
                colour: Colors.black,
              ),
              listItems(),
              sBox(40),
              greyDivider(),
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

  Widget iconWittext(IconData icc, String text) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Icon(icc),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(text, style: TextStyle(color: Colors.cyan)),
          ),
        ],
      ),
    );
  }

  Widget greyDivider() {
    return Divider(
      thickness: 5,
      color: Colors.grey,
    );
  }

  Widget iconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        imageCol(
          "https://images-na.ssl-images-amazon.com/images/G/31/A2I-Convert/mobile/IconFarm/icon-returns._CB484059092_.png",
          "Pay on",
          "Delivery",
        ),
        imageCol(
          "https://images-na.ssl-images-amazon.com/images/G/31/A2I-Convert/mobile/IconFarm/icon-amazon-delivered._CB485933725_.png",
          "Amazon",
          "Delivered",
        ),
        imageCol(
          "https://images-na.ssl-images-amazon.com/images/G/31/A2I-Convert/mobile/IconFarm/icon-warranty._CB485935626_.png",
          "1 year warranty",
          " ",
        ),
        imageCol(
          "https://images-na.ssl-images-amazon.com/images/G/31/A2I-Convert/mobile/IconFarm/No_contact_delivery_final._CB432269791_.png",
          "No-Contact",
          "Delivery",
        ),
      ],
    );
  }

  Widget imageCol(String image, String tex1, String tex2) {
    return Column(
      children: <Widget>[
        Image.network(image),
        Text(
          tex1,
          style: TextStyle(color: Colors.cyan),
        ),
        Text(
          tex2,
          style: TextStyle(color: Colors.cyan),
        )
      ],
    );
  }

  Widget smalTexRaw(String tex1, String tex2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[Text(tex1), Text(tex2)],
    );
  }

  Widget listItems() {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          lsvItems(
            "https://m.media-amazon.com/images/I/41BKBqirQGL._AC_SR160,160_.jpg",
            "HP Spectra x360",
            "FHD TouchScreen",
            "290 reviews",
            "₹1,49,990.00",
          ),
          lsvItems(
            "https://m.media-amazon.com/images/I/41BKBqirQGL._AC_SR160,160_.jpg",
            "HP Spectra x360",
            "FHD TouchScreen",
            "290 reviews",
            "₹1,49,990.00",
          ),
          lsvItems(
            "https://m.media-amazon.com/images/I/41BKBqirQGL._AC_SR160,160_.jpg",
            "HP Spectra x360",
            "FHD TouchScreen",
            "290 reviews",
            "₹1,49,990.00",
          ),
          lsvItems(
            "https://m.media-amazon.com/images/I/41BKBqirQGL._AC_SR160,160_.jpg",
            "HP Spectra x360",
            "FHD TouchScreen",
            "290 reviews",
            "₹1,49,990.00",
          ),
          lsvItems(
            "https://m.media-amazon.com/images/I/41BKBqirQGL._AC_SR160,160_.jpg",
            "HP Spectra x360",
            "FHD TouchScreen",
            "290 reviews",
            "₹1,49,990.00",
          ),
          lsvItems(
            "https://m.media-amazon.com/images/I/41BKBqirQGL._AC_SR160,160_.jpg",
            "HP Spectra x360",
            "FHD TouchScreen",
            "290 reviews",
            "₹1,49,990.00",
          )
        ],
      ),
    );
  }

  Widget lsvItems(
    String image,
    String tex1,
    String tex2,
    String revtex,
    String amount,
  ) {
    return Column(
      children: <Widget>[
        Image.network(image),
        Text(
          tex1,
          style: TextStyle(color: Colors.cyan),
        ),
        Text(
          tex2,
          style: TextStyle(color: Colors.cyan),
        ),
        Text("⭐️⭐️⭐️"),
        Text(revtex),
        Text(amount),
      ],
    );
  }
}
