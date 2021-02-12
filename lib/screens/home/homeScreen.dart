import 'package:flutter/material.dart';
import 'package:shopee/models/home/slide-dot.dart';
import 'package:shopee/models/home/slide.dart';
import 'package:shopee/screens/home/slide_menu.dart';
import 'slide_item.dart';
import '../../models/bottom_bar.dart';
import 'dart:async';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int _currentPage = 0;
  int data = 0;

  final PageController _pageController = PageController(
      initialPage: 0
  );
  final _mController = ScrollController();

  @override
  void initState(){
    super.initState();
    // FlutterAppBadger.updateBadgeCount(2);
    // print("123");
    // print(FlutterAppBadger.isAppBadgeSupported());
    Timer.periodic(Duration(seconds: 3), (timer) {
      if(_currentPage < 1){
        _currentPage++;
      } else{
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  Future <dynamic> _onRefresh(){
    data = 1;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:
              Stack(
                children: [
 //                 RefreshIndicator(
  //                    child:
                      ListView(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  height: 200,
                                  child: PageView.builder(
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: _onPageChanged,
                                      controller: _pageController,
                                      itemCount: slideList.length,
                                      itemBuilder: (context, i) => SlideItem(i)
                                  )
                              ),
                              Container(
                                height: 200,
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        for(int i = 0 ; i < slideList.length ; i++)
                                          if(i == _currentPage)
                                            SlideDots(true)
                                          else
                                            SlideDots(false)
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SlideMenu(_mController),
                          Container(height: 300,child: Text('1231'),),
                          Container(height: 300,child: Text('1231'),),
                          Container(height: 300,child: Text('1231'),),
                          Container(height: 300,child: Text('1231'),),
                        ],
                      ),
 //                     onRefresh: _onRefresh),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        children: [
                          SizedBox(width: 15) ,
                          Expanded(
                              flex: 7,
                              child: Container(
                                height: 35,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    IconButton(icon: Image.asset('assets/images/search_32.png',height: 20,width: 20), onPressed: null),
                                    Text('More')
                                  ],
                                ),
                              )
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(icon: Image.asset('assets/images/shopping-cart_64.png',height: 30,width: 30), onPressed: null),
                          ),
                          Expanded(
                            flex: 1,
                            //child: IconButton(icon: Image.asset('assets/images/chat-box_64.png',height: 30,width: 30), onPressed: null),
                            child: Badge(
                              badgeContent: Text("3"),
                              child: Icon(Icons.chat),
                              position: BadgePosition.topEnd(top:-10,end:3),
                              //child: IconButton(icon: Image.asset('assets/images/chat-box_64.png',height: 30,width: 30), onPressed: null),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
          ),
          BottomBar(),
        ],
      ),
    );
  }
}