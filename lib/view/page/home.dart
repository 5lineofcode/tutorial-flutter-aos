import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutorial1/view/partial/ratingbutton.dart';

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
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 2,
                  left: 2,
                  child: Icon(Icons.star, size: 20.0),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Hello"),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ],
            ),
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

  getCommonWidget() {
    return Container(
      color: Colors.blue,
      // padding: EdgeInsets.all(),
      padding: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
      ),
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Text("Hello"),
          Image.network(
            "https://kyotoreview.org/wp-content/uploads/Indonesia-map-678x381.jpg",
            width: 100.0,
            height: 100.0,
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text("SM MILD 12"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("ROKOK"),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  RatingButton(
                    ratingCount: 8,
                    starColor: Colors.green,
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text("Buy"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getKotak(Colors.red),
            getKotakWithIcon(),
            getListDataWithContainer(),
            getStackContainer(),
            getCommonWidget(),
          ],
        ),
      ),
    );
  }
}
