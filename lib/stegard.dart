import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<String> _listTitle = <String>[
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124340.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124340.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124340.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124337.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124337.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124340.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124340.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124340.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124337.jpg",
  "https://image.freepik.com/free-photo/abstract-fantasy-landscape-background_23-2149124337.jpg",
];

class stegard extends StatefulWidget {
  const stegard({Key? key}) : super(key: key);

  @override
  _stegardState createState() => _stegardState();
}

class _stegardState extends State<stegard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: _listTitle.length,
          itemBuilder: (BuildContext context, int index) => Stack(
            children: [
              Positioned.fill(
                  child: Image.network(
                _listTitle[index],
                fit: BoxFit.cover,
              )),
              Align(alignment: Alignment.bottomLeft, child: Text('hii how r u'))
            ],
          ),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ));
  }
}
