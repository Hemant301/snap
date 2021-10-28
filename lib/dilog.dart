import 'package:flutter/material.dart';
import 'package:reating/profil.dart';


class dilog extends StatefulWidget {
  const dilog({ Key? key }) : super(key: key);

  @override
  _dilogState createState() => _dilogState();
}

class _dilogState extends State<dilog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 120,
                width: 120,

                color: Colors.blue,
          child: InkWell(onTap: (){showDialog(context: context, builder: (ctxt)=>Profile());},),),
            )
          ],
        ),
     
    
      
    );
  }
}