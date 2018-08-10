import 'package:flutter/material.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/UI/explore_page.dart';

class RecyclingLabelsPage extends StatelessWidget {
  static String tag = 'RecyclingLabelsPage';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: const Text("Evergreen", style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomePage.tag);
              },
            ),
            IconButton(
              icon: Icon(Icons.explore),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            new Image.asset('assets/image1.jpg'),
            new Image.asset('assets/image2.jpg'),
            new Image.asset('assets/image3.jpg'),
            new Image.asset('assets/image4.jpg'),
            new Image.asset('assets/image5.jpg'),
            new Image.asset('assets/image6.jpg'),
            new Image.asset('assets/image7.jpg'),
            new Image.asset('assets/image8.jpg'),
            new Image.asset('assets/image9.jpg'),
            new Image.asset('assets/image10.jpg'),
          ],
        ),
      ),
    );
  }
}

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         backgroundColor: Colors.green,
//         title: new Text("Recycling Labels"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.home),
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed(HomePage.tag);
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.explore),
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed(ExplorePage.tag);
//             },
//           )
//         ],
//       ),
//       body: GridView.extent(
//         maxCrossAxisExtent: 100.0,
//         children: _buildGridTiles(10),
//       ),
//     );
//   }
// }

// List<Widget> _buildGridTiles(numberOfTiles) {
//   List<Container> containers =
//       new List<Container>.generate(numberOfTiles, (int index) {
//     final imageName = 'assets/image${index + 1}.jpg';
//     return new Container(
//       child: new Image.asset(imageName),
//     );
//   });
//   return containers;
// }
