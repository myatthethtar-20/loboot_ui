import 'package:flutter/material.dart';

void main() => runApp(TestMyApp());

class TestMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(children: <Widget>[
                    Image.asset("assets/images/mask.png"),
                  ]),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.only()),
                  width: 180,
                  height: 30,
                  child: Text("data"),
                ),
              ],
            ),
          ]),
    ));
  }
}

//  ListView(
//           children: <Widget>[
//               Container(
//                 color: Colors.pink,
//                     margin:EdgeInsets.all(8.0),
//                     child: Card(
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
//                         child: InkWell(
//                            onTap: () => print("ciao"),
//                            child: Column(
//                                 children: <Widget>[
//                                     ClipRRect(
//                                       borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(8.0),
//                                         topRight: Radius.circular(8.0),
//                                       ),
//                                       child: Image.network(
//                                         'https://images.unsplash.com/photo-1570376240079-1b77104bcbad?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
//                                         width: 200,
//                                         height: 150,
//                                         fit:BoxFit.fill

//                                       ),
//                                     ),

//                                 ],
//                            ),
//                         ),
//                     ),
//               ),
//           ],
//         ),
