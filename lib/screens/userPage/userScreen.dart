import 'package:flutter/material.dart';
import 'package:shopee/models/bottom_bar.dart';
import 'package:shopee/screens/userPage/inPurchase.dart';
import 'package:shopee/screens/userPage/tabBarView.dart';
import 'topBar.dart';
import 'postWall.dart';
import 'inPurchase.dart';

class UserScreen extends StatefulWidget{
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>{
  bool pressed = true;

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.90),
      body:Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  TopBar(true),
                  Visibility(
                    visible: true,
                    maintainSize: false,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                              color: Colors.white,
                              textColor: pressed ? Colors.redAccent : Colors.black,
                              onPressed: (){
                                pressed = true;
                                setState(() {

                                });
                              },
                              child: Text('buy')
                          ),
                          FlatButton(
                              textColor: pressed ? Colors.black : Colors.redAccent,
                              onPressed: () {
                                pressed = false;
                                setState(() {

                                });
                              },
                              child: Text('post')
                          ),
                        ],
                      ),
                    ),
                  ),
                  pressed ? InPurchase() : PostWall(),
                  // Expanded(child: tabBarView())
                ],
              ),
          ),
          BottomBar()
        ],
      )
    );
  }
}