import 'package:flutter/material.dart';
import 'package:shopee/screens/userPage/postWall.dart';

import 'inPurchase.dart';

class tabBarView extends StatefulWidget{
  @override
  _tabBarViewState createState() => _tabBarViewState();
}

class _tabBarViewState extends State<tabBarView> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  void initState(){
    tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     TabBar(
    //       tabs: [
    //         Tab(text: "購買中"),
    //         Tab(text: "貼文牆")
    //       ],
    //       controller: tabController,
    //     ),
    //     Expanded(
    //         child: TabBarView(
    //           controller: tabController,
    //           children: [
    //             InPurchase(),
    //             PostWall()
    //           ],
    //         )
    //     ),
    //   ],
    // );
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              tabs: [
                Tab(text:"購買中"),
                Tab(text:"貼文牆")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text("123"),
              Text("123")
            ],
          ),
        ));
  }
}