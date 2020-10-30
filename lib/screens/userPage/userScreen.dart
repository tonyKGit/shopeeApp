import 'package:flutter/material.dart';
import 'package:shopee/screens/userPage/inPurchase.dart';
import 'topBar.dart';
import 'postWall.dart';
import 'inPurchase.dart';

class UserScreen extends StatefulWidget{
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>{
  bool mTest = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.82),
      body: ListView(
        children: [
          TopBar(false),
          Visibility(
            visible: false,
            maintainSize: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                    onPressed: null,
                    child: Text('buy')
                ),
                FlatButton(
                    onPressed: () {
                      mTest = false;
                      setState(() {

                      });
                    },
                    child: Text('post')
                ),
              ],
            ),
          ),
        mTest ? InPurchase() : PostWall(),
        ],
      ),
    );
  }
}