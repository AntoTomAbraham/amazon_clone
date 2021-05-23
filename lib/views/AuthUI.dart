import 'package:flutter/material.dart';

class AuthUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          divider(50),
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width * 1,
            child: Center(
              child: Image.network(
                "https://sguru.org/wp-content/uploads/2018/02/amazon_logo_RGB.jpg",
              ),
            ),
          ),
          divider(50),
          textwid("Sign in to your account", 20, FontWeight.bold),
          divider(20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textwid("view your wish list", 15, FontWeight.normal),
                divider(10),
                textwid(
                    "find and reorder last purchases", 15, FontWeight.normal),
                divider(10),
                textwid("Track your purchases", 15, FontWeight.normal),
              ],
            ),
          ),
          divider(20),
          fButton(
            "Already a customer? Sign in",
            Colors.yellow[700],
          ),
          divider(10),
          fButton("New to Amazon? Create an account", Colors.grey[300]),
          divider(10),
          fButton("Skip sign in", Colors.grey[300]),
        ],
      ),
    );
  }

  Widget textwid(String data, double fsize, FontWeight fweit) {
    return Text(
      data,
      style: TextStyle(fontSize: fsize, fontWeight: fweit),
    );
  }

  Widget divider(double hei) {
    return SizedBox(height: hei);
  }

  Widget fButton(String text, Color colour) {
    return SizedBox(
      width: 300,
      child: FlatButton(
        color: colour,
        child: Text(
          text,
        ),
        onPressed: () {},
      ),
    );
  }
}
