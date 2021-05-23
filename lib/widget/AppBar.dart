import 'package:amazon_app/views/AuthUI.dart';
import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[200],
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AuthUI()));
                    },
                  ),
                  Container(
                    width: 90,
                    height: 42,
                    child: Image.network(
                      "http://pngimg.com/uploads/amazon/amazon_PNG13.png",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.mic,
                        color: Colors.black,
                      ),
                      onPressed: null),
                  IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      onPressed: null),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.cyan[200],
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.camera_alt),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red, //this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "🔍 Search",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
