import 'package:flutter/material.dart';
import 'package:reating/cart.dart';
import 'package:reating/snapagain.dart';

class maintap extends StatefulWidget {
  const maintap({ Key? key }) : super(key: key);

  @override
  _maintapState createState() => _maintapState();
}

class _maintapState extends State<maintap> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs=<Tab>[
    Tab(child: Text("cart"),),
     Tab(child: Text("Snap Again"),)
    
  ];
  @override
  void initState() {
    _tabController =TabController(length: 6,initialIndex: 0, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(bottom: TabBar(
        controller:_tabController,
        indicatorColor: Colors.black,
        tabs: topTabs,
      ),
      ),
      body:TabBarView(
        controller: _tabController,
      
      children: [
         
     
        cart(),
        snapagain(),
     
      ],
      )


      
    
      
      
    );
  }
}