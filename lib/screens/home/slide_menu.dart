import 'package:flutter/material.dart';

class SlideMenu extends StatelessWidget{
  final _mController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Scrollbar(
          controller: _mController,
          isAlwaysShown: true,
          child: ListView(
            controller: _mController,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          width: 120,
                          height:70,
                        child: FlatButton(
                          child: Column(
                            children: [
                              Image.asset("assets/images/logistics_64.png",width: 30,height: 30),
                              SizedBox(height: 5),
                              Text("免運！蝦皮直送",style: TextStyle(fontSize: 12))
                            ],
                          ),
                        )
                      ),
                      Container(
                          width: 120,height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/price-tag_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("刷卡＆活動",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 120,
                          height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/logistics_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("蝦皮商城",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 120,
                          height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/logistics_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("蝦皮電子",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          width: 120,
                          height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/logistics_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("蝦選榜",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 120,height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/price-tag_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("刷卡＆活動",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 120,
                          height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/logistics_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("蝦皮超市",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 120,
                          height:70,
                          child: FlatButton(
                            child: Column(
                              children: [
                                Image.asset("assets/images/logistics_64.png",width: 30,height: 30),
                                SizedBox(height: 5),
                                Text("蝦皮團購",style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}