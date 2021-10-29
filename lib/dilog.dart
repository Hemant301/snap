import 'package:flutter/material.dart';
import 'package:reating/fullpage.dart';
import 'package:reating/profil.dart';

class dilog extends StatefulWidget {
  const dilog({Key? key}) : super(key: key);

  @override
  _dilogState createState() => _dilogState();
}

class _dilogState extends State<dilog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showDialog(context: context, builder: (ctxt) => fullpage());
                },
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text("click to cart"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  showDialog(context: context, builder: (ctxt) => Profile());
                },
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text("click to  popup"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
