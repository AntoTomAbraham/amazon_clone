import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  String imagee;
  String texta;
  String textb;
  String textc;
  String textd;
  DetailCard({
    @required this.imagee,
    @required this.texta,
    @required this.textb,
    @required this.textc,
    @required this.textd,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Row(
              children: <Widget>[
                Text(texta),
                Text(textb),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              alignment: new FractionalOffset(0.0, 0.9),
              child: Text(textc),
            ),
          ),
          Container(
            //width: MediaQuery.of(context).size.width * .8,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Image.network(imagee),
            ),
          ),
          Container(
            alignment: new FractionalOffset(0.0, 0.9),
            child:
                IconButton(icon: Icon(Icons.favorite_border), onPressed: null),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              alignment: new FractionalOffset(0.0, 0.9),
              child: RichText(
                text: TextSpan(
                  text: '₹ ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: textd,
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: new FractionalOffset(0.0, 0.9),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "FREE delivery: Wednesday, May 12 Details ",
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'EMI options',
                            style: TextStyle(color: Colors.cyan[900])),
                      ],
                    ),
                  ),
                  Text("EMI starts at ₹6,307. No Cost EMI available"),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: <Widget>[
                        frowDivider(),
                        lineDivider(),
                        rowDivider('No Cost EMI :', 'Upto 3999 No EMI',
                            "interest saving on amazon pay ICICI.."),
                        lineDivider(),
                        rowDivider('cashback(3) :', 'Get flat 500 with',
                            "Amazon pay later offer applicable"),
                        lineDivider(),
                        lRowDivider(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget lineDivider() {
    return Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }

  Widget rowDivider(String tex1, String tex2, String tex3) {
    return Container(
      alignment: new FractionalOffset(0.0, 0.9),
      child: Column(
        children: <Widget>[
          Container(
            alignment: new FractionalOffset(0.0, 0.9),
            child: RichText(
              text: TextSpan(
                text: tex1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                      text: tex2,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                ],
              ),
            ),
          ),
          Container(
            alignment: new FractionalOffset(0.0, 0.9),
            child: Text(
              tex3,
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  Widget frowDivider() {
    return Row(
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            onPressed: null),
        RichText(
          text: TextSpan(
            text: 'Save Extra ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            //style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: 'with 4 offers',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                //TextSpan(text: ' world!'),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget lRowDivider() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Text(
            "see 2 more offers",
            style: TextStyle(color: Colors.cyan),
          )
        ],
      ),
    );
  }
}
