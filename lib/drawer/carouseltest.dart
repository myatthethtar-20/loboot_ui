import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselTest extends StatefulWidget {
  @override
  _CarouselTestState createState() => _CarouselTestState();
}

class _CarouselTestState extends State<CarouselTest> {
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
    return MaterialApp(
      title:'Flutter Card Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter Card Carousel")),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
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
                        child: Card(
                          color: Colors.blueAccent,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
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
          )),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
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
                  label: Text('prefecture'),
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
                  hintText: 'Course description',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
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
            ]));
  }
}
