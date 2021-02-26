import 'package:flutter/material.dart';
import 'package:loboot/drawer/addspot.dart';
import 'package:loboot/drawer/confirmcreatecourse.dart';
import 'package:loboot/drawer/createcourse.dart';
import 'package:loboot/drawer/createspot.dart';
import 'package:loboot/drawer/googlemap.dart';

class SettingDrawer extends StatefulWidget {
  @override
  _SettingDrawerState createState() => _SettingDrawerState();
}

class _SettingDrawerState extends State<SettingDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOBOOT"), backgroundColor: Colors.pink),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(30),
              child: InkWell(
                child: Row(children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text("Create Course"),
                      ]))
                ]),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateCourse()));
                },
              )),
          Container(
              margin: EdgeInsets.all(30),
              child: InkWell(
                child: Row(children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text("Confirm Create"),
                      ]))
                ]),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConfirmCreate()));
                },
              )),
                        Container(
              margin: EdgeInsets.all(30),
              child: InkWell(
                child: Row(children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text("Add Spot"),
                      ]))
                ]),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddSpot()));
                },
              )),
                            Container(
              margin: EdgeInsets.all(30),
              child: InkWell(
                child: Row(children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text("Create Spot"),
                      ]))
                ]),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateSpot()));
                },
              )),
         
                 Container(
              margin: EdgeInsets.all(30),
              child: InkWell(
                child: Row(children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text("Image Test"),
                      ]))
                ]),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GoogleMapp()));
                },
              )),

        ],
      )),
    );
  }
}
