import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var aosContainer = Container(
    color: Colors.blue,
    width: 60.0,
    height: 60.0,
  );

  getKotak(warna) {
    return Container(
      color: warna,
      width: 100.0,
      height: 100.0,
    );
  }

  getKotakWithIcon() {
    return Container(
      color: Colors.green,
      width: 100.0,
      height: 100.0,
      child: Icon(FontAwesomeIcons.helicopter),
    );
  }

  getListDataWithContainer() {
    return Container(
      height: 100.0,
      color: Colors.blue,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            height: 50.0,
            width: 100.0,
            color: index % 2 == 0 ? Colors.green : Colors.red,
          );
        },
      ),
    );
  }

  getStackContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      color: Colors.pink,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.yellow,
              width: 50.0,
              height: 50.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.help),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          getKotak(Colors.red),
          getKotakWithIcon(),
          getListDataWithContainer(),
          getStackContainer(),
        ],
      ),
    );
  }
}
