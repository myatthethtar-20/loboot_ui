import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loboot/drawer/bottombutton.dart';

class CreateCourse extends StatefulWidget {
  @override
  _CreateCourseState createState() => _CreateCourseState();
}

class _CreateCourseState extends State<CreateCourse> {
  int _currentIndex = 0;

  List cardList = [Course1(), Course1(), Course1()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(Icons.close),
        title: Text("Create Course", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            CheckboxListTile(
              title: Text("Auto Translate"),
              controlAffinity: ListTileControlAffinity.platform,
              activeColor: Colors.black,
              checkColor: Colors.pink,
              value: _isChecked,
              selected: _isChecked,
              onChanged: (bool value) {
                setState(() {
                  _isChecked = value;
                });
              },
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Card(
                    elevation: 5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 5.0,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: cardList.map((card) {
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            width: MediaQuery.of(context).size.width / 0.8,
                            child: card,
                          );
                        });
                      }).toList(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == index ? Colors.black : Colors.grey,
                      ),
                    );
                  }),
                ),
              ],
            ),
            Container(margin: EdgeInsets.all(20.0), child: course(context)),
            SizedBox(height: 5),
            BottomButton(
              buttonTitle: 'Next',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget course(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          )),
                      child: Image.asset("assets/images/mask.png"),
                    ),
                    SizedBox(height: 10),
                    Center(child: Text("Flutter Foundation")),
                  ]),
                ),
              ]),
        ),
        SizedBox(width: 5),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 2.4,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  )),
              child: Image.asset("assets/images/mask.png"),
            ),
            SizedBox(height: 10),
            Center(child: Text("Flutter Advanced")),
          ]),
        ),
      ]),
      SizedBox(height: 5),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          size: 65,
                        ),
                        Text("Add Spot")
                      ]),
                ),
              ]),
        ),
      ]),
    ],
  );
}

class Course1 extends StatelessWidget {
  const Course1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    "ENGLISH",
                    style: TextStyle(color: Colors.pink),
                  )),
            ],
          ),
          TextField(
            controller: null,
            autofocus: false,
            style: new TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Course title',
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
          Container(
            height: 30,
            margin: EdgeInsets.only(left: 15),
            child: OutlineButton.icon(
              onPressed: () {},
              highlightedBorderColor: Colors.grey,
              splashColor: Colors.grey,
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              icon: Icon(
                Icons.add,
                size: 18.0,
              ),
              label: Text('Prefecture'),
            ),
          ),
          SizedBox(height: 5),
          TextField(
            controller: null,
            autofocus: false,
            style: new TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Course Description',
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
        ]);
  }
}
