import 'package:flutter/material.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/UI/explore_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Recycling Labels"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200.0,
        children: _buildGridTiles(10),
      ),
    );
  }
}

// double _duelCommandment;

// final sli = new Slider(
//   value: _duelCommandment.toDouble(),
//   min: 1.0,
//   max: 10.0,
//   divisions: 10,
//   label: '$_duelCommandment',
//   onChanged: (double newValue) {
//     return _duelCommandment = newValue;
//   },
);

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers =
      new List<Container>.generate(numberOfTiles, (int index) {
    final imageName = 'assets/image${index + 1}.png';
    print(imageName);
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Image.asset(imageName),
    );
  });
  return containers;
}

// buildSpecialWidget() {
//   return new Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       _buildGridTiles(10)
//     ],
//   );
// }

class RecyclingLabelsPage extends StatelessWidget {
  static String tag = 'RecyclingLabelsPage';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new MainPage(),
      ),
    );
  }
}
