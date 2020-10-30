import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 75,
          child:
          FlatButton(
              onPressed: null,
              child: Column(
                children: [
                  Image.asset('assets/images/home_64.png',width: 30,height: 30),
                  Text('首頁',style: TextStyle(fontSize: 15),)
                ],
              )
          ),
        ),
        SizedBox(
          width: 75,
          child:
          FlatButton(
              onPressed: null,
              child: Column(
                children: [
                  Image.asset('assets/images/home_64.png',width: 30,height: 30),
                  Text('動態',style: TextStyle(fontSize: 15),)
                ],
              )
          ),
        ),
        SizedBox(
          width: 75,
          child:
          FlatButton(
              onPressed: null,
              child: Column(
                children: [
                  Image.asset('assets/images/broadcasting_64.png',width: 30,height: 30),
                  Text('直播',style: TextStyle(fontSize: 15),)
                ],
              )
          ),
        ),
        SizedBox(
          width: 75,
          child:
          FlatButton(
              onPressed: null,
              child: Column(
                children: [
                  Image.asset('assets/images/notification_64.png',width: 30,height: 30),
                  Text('通知',style: TextStyle(fontSize: 15),)
                ],
              )
          ),
        ),
        SizedBox(
          width: 75,
          child:
          FlatButton(
              onPressed: null,
              child: Column(
                children: [
                  Image.asset('assets/images/user-avatar_64.png',width: 30,height: 30),
                  Text('我的',style: TextStyle(fontSize: 15),)
                ],
              )
          ),
        ),
      ],
    );
  }
}