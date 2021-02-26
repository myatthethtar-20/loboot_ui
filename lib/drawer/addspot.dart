import 'package:flutter/material.dart';

class AddSpot extends StatefulWidget {
  @override
  _AddSpotState createState() => _AddSpotState();
}

class _AddSpotState extends State<AddSpot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          title: Text("Add Spot"),
          leading: Icon(Icons.close),
          actions: <Widget>[
            Container(margin: EdgeInsets.all(10.0), child: Icon(Icons.check)),
          ]),
      body: Column(children: <Widget>[
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          margin: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              new Expanded(
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Spot",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    isDense: true,
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: RaisedButton.icon(
            onPressed: () {},

            label: Text(
              'Create New Spot',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            textColor: Colors.white,
            //  splashColor: Colors.red,
            color: Colors.pink,
          ),
        ),
      ]),
    );
  }
}
