import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> fruits = ['mangoesdePakistan', 'asad', 'bananasdeSrilenka','pearsdeIndia','orangesAustralia', 'mangoesdePakistan','bananasdeSrilenka','pearsdeIndia','orangesAustralia', 'mangoesdePakistan','bananasdeSrilenka','pearsdeIndia','orangesAustralia'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 180.0,
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) =>  Container(
            child: Center(child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Chip(
                    label: Text('${fruits[index]}', overflow: TextOverflow.visible, maxLines: 1, style: TextStyle(),)))),
          ),
          staggeredTileBuilder: (int index) => StaggeredTile.count(2, fruits[index].length > 3 ? fruits[index].length > 8 ? fruits[index].length > 2 ? 4 : 3 : 2 : 1),
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
      ),

    );
  }
}
//
// decoration: BoxDecoration(
// border: Border.all(color: Colors.grey),
// borderRadius: BorderRadius.circular(20.0)
// ),
