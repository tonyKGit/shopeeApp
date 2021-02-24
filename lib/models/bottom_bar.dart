import 'package:flutter/material.dart';
import 'package:shopee/blocs/user_posts_bloc.dart';
import 'package:shopee/screens/home/homeScreen.dart';
import 'package:shopee/screens/userPage/userScreen.dart';
import 'package:shopee/service/APIWarpper.dart';

class BottomBar extends StatelessWidget {
  final String _currentPage;
  BottomBar(this._currentPage);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 75,
            child: FlatButton(
                onPressed: () {
                  if (_currentPage != "HomeScreen") {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomeScreen()));
                  }
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/home_64.png',
                        width: 30, height: 30),
                    Text('首頁', style: TextStyle(fontSize: 15))
                  ],
                )),
          ),
          SizedBox(
            width: 75,
            child: FlatButton(
                onPressed: () {

                },
                child: Column(
                  children: [
                    Image.asset('assets/images/home_64.png',
                        width: 30, height: 30),
                    Text(
                      '動態',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 75,
            child: FlatButton(
                onPressed: null,
                child: Column(
                  children: [
                    Image.asset('assets/images/broadcasting_64.png',
                        width: 30, height: 30),
                    Text(
                      '直播',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 75,
            child: FlatButton(
                onPressed: null,
                child: Column(
                  children: [
                    Image.asset('assets/images/notification_64.png',
                        width: 30, height: 30),
                    Text(
                      '通知',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 75,
            child: FlatButton(
                onPressed: () => {
                      if (_currentPage != "UserScreen")
                        {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      UserScreen()))
                        }
                      //Navigator.pushNamed(context, '/userScreen')
                    },
                child: Column(
                  children: [
                    Image.asset('assets/images/user-avatar_64.png',
                        width: 30, height: 30),
                    Text(
                      '我的',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
