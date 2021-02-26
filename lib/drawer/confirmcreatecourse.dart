import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loboot/drawer/bottombutton.dart';

class ConfirmCreate extends StatefulWidget {
  @override
  _ConfirmCreateState createState() => _ConfirmCreateState();
}

class _ConfirmCreateState extends State<ConfirmCreate> {
  int _currentIndex = 0;
  List cardList = [Item1(), Item1(), Item1()];
  
  List<T> map<T>(List list, Function handler) {

    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink,
        leading: Icon(Icons.close),
        title: Text("Confirm Create Course",
            style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          Container(margin: EdgeInsets.all(10.0), child: Icon(Icons.sort)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.black : Colors.grey,
                  ),
                );
              }),
            ),
            Container(
                margin: EdgeInsets.all(15.0), child: comfirmcourse(context)),
            Container(
              margin: EdgeInsets.only(top: 72),
              child: BottomButton(
                buttonTitle: 'Confirm',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget comfirmcourse(BuildContext context) {
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
                Center(child: Text("Flutter Advanced")),
              ]),
            ),
          ]),
        ),
      ]),
    ],
  );
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

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
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "Lorem Ipsum",
                style: TextStyle(color: Colors.black, fontSize: 21),
              )),
          SizedBox(height: 5),
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
          Container(
              margin: EdgeInsets.all(15.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur")),
        ]);
  }
}
