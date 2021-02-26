import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateSpot extends StatefulWidget {
  @override
  _CreateSpotState createState() => _CreateSpotState();
}

class _CreateSpotState extends State<CreateSpot> {
   File _image;
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          title: Text("Create Spot"),
          leading: Icon(Icons.close),
          actions: <Widget>[
            Container(margin: EdgeInsets.all(10.0), child: Icon(Icons.check)),
          ]),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: null,
              autofocus: false,
              style: new TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Spot Name',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(5),
                ),
              ),
            ),
            TextField(
              controller: null,
              autofocus: false,
              style: new TextStyle(fontSize: 19.0, color: Color(0xFFbdc6cf)),
              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Spot Introduction',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(5),
                ),
              ),
            ),
         
              GestureDetector(
                  onTap: () {
                    _showPicker(context);
                  },
                  child: Container(
                    child: _image != null
                        ? Container(
                            child: Image.file(
                              _image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        : Container(
                            child: Image.asset("assets/images/cameraex.png",
                                width: 250, height: 200),
                          ),
                  ),
                ),
            ],
         
        
        ),
      ),
    );
  }
}

