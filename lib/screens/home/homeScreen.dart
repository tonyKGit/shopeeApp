import 'package:flutter/material.dart';
import 'package:shopee/models/home/slide-dot.dart';
import 'package:shopee/models/home/slide.dart';
import 'package:shopee/screens/home/slide_menu.dart';
import 'slide_item.dart';
import 'bottom_bar.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int _currentPage = 0;

  final PageController _pageController = PageController(
      initialPage: 0
  );
  final _mController = ScrollController();

  @override
  void initState(){
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:
              Stack(
                children: [
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
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        children: [
                          SizedBox(width: 15) ,
                          Expanded(
                              flex: 6,
                              child: Container(
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
                            child: IconButton(icon: Image.asset('assets/images/chat-box_64.png',height: 30,width: 30), onPressed: null),
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