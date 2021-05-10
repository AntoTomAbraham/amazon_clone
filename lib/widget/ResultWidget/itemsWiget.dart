import 'package:amazon_app/views/Details.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      child: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          image:
                              "https://m.media-amazon.com/images/I/71YRSVXhgQL._AC_SX480_SY220_QL70_.jpg",
                          text1: "Macbook pro with M1 chip",
                          text2: "(13 inch,8GB Ram,256GB SSD)",
                          text3: "Gold",
                          text4: "98,000",
                        )),
              );
            },
            child: indiviItem(
              context,
              "https://m.media-amazon.com/images/I/71YRSVXhgQL._AC_SX480_SY220_QL70_.jpg",
              "Macbook pro with M1 chip",
              "(13 inch,8GB Ram,256GB SSD)",
              "Gold",
              " 98,000",
              "Save extra with No Cost EMI",
              "FREE Delivery by Amazon",
              "In stock on May 10, 2021.",
            ),
          ),
          indiviItem(
            context,
            "https://m.media-amazon.com/images/I/71YRSVXhgQL._AC_SX480_SY220_QL70_.jpg",
            "Macbook pro with M1 chip",
            "(13 inch,8GB Ram,256GB SSD)",
            "Gold",
            " 98,000",
            "Save extra with No Cost EMI",
            "FREE Delivery by Amazon",
            "In stock on May 10, 2021.",
          ),
          indiviItem(
            context,
            "https://m.media-amazon.com/images/I/71YRSVXhgQL._AC_SX480_SY220_QL70_.jpg",
            "Macbook pro with M1 chip",
            "(13 inch,8GB Ram,256GB SSD)",
            "Gold",
            " 98,000",
            "Save extra with No Cost EMI",
            "FREE Delivery by Amazon",
            "In stock on May 10, 2021.",
          ),
          indiviItem(
            context,
            "https://m.media-amazon.com/images/I/71YRSVXhgQL._AC_SX480_SY220_QL70_.jpg",
            "Macbook pro with M1 chip",
            "(13 inch,8GB Ram,256GB SSD)",
            "Gold",
            " 98,000",
            "Save extra with No Cost EMI",
            "FREE Delivery by Amazon",
            "In stock on May 10, 2021.",
          ),
          indiviItem(
            context,
            "https://m.media-amazon.com/images/I/71YRSVXhgQL._AC_SX480_SY220_QL70_.jpg",
            "Macbook pro with M1 chip",
            "(13 inch,8GB Ram,256GB SSD)",
            "Gold",
            " 98,000",
            "Save extra with No Cost EMI",
            "FREE Delivery by Amazon",
            "In stock on May 10, 2021.",
          ),
        ],
      ),
    );
  }

  Widget indiviItem(
    BuildContext context,
    String image,
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    String text6,
    String text7,
  ) {
    return Container(
      height: 220,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .5,
            child: Image.network(image),
          ),
          Container(
            child: Column(
              children: <Widget>[
                boldText(text1),
                boldText(text2),
                boldText(text3),
                boldText("⭐️⭐️⭐️⭐️⭐️ 548"),
                amountText(context, text4, "₹"),
                normalText(text5),
                normalText(text6),
                smallText(text7),
                primeImage(),
                addTocartButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget boldText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget amountText(BuildContext context, String text, String text2) {
    return RichText(
      text: TextSpan(
        text: text2,
        style: TextStyle(color: Colors.grey[700]),
        children: <TextSpan>[
          TextSpan(
              text: text,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red[300])),
        ],
      ),
    );
  }

  Widget normalText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12, color: Colors.grey[600],
        //fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget smallText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11, color: Colors.grey[600],
        //fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget primeImage() {
    return Row(
      children: <Widget>[
        Container(
          height: 35,
          width: 50,
          alignment: new FractionalOffset(0.0, 0.9),
          child: Image.network(
            "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/052018/untitled-1_282.png?zBgfG0XEfdsPUq33GRuhu6udfY3Yu_rs&itok=39OQ7JCF",
            fit: BoxFit.contain,
          ),
        ),
        normalText("Get it by"),
        boldText("Thursday,May")
      ],
    );
  }

  Widget addTocartButton() {
    return RaisedButton(
      onPressed: () {
        print('Button Clicked');
      },
      child: Text('Add to Cart'),
      color: Colors.yellow,
      textColor: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.yellow, width: 2)),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    );
  }
}
