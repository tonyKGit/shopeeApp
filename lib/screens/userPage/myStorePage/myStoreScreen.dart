import 'package:flutter/material.dart';

class MyStoreScreen extends StatefulWidget{
  _MyStoreScreenState createState() => _MyStoreScreenState();
}

class _MyStoreScreenState extends State<MyStoreScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                  Row(
                    children: [
                      IconButton(icon: Image.asset('assets/images/setting_64.png',height: 30,width: 30), onPressed: null),
                      IconButton(icon: Image.asset('assets/images/chat-box_64.png',height: 30,width: 30), onPressed: null)
                    ],
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    IconButton(icon: Image.asset('assets/images/user-avatar-info_64.png',height: 40,width: 40), onPressed: null),
                    Column(
                      children: [
                        Text('123'),
                        Text('456')
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('重要公告')
                  ],
                ),
                Column(
                  children: [
                    FlatButton(
                      shape: Border(
                          bottom: BorderSide(
                              color: Colors.black.withOpacity(0.2),width: 0.5
                          )
                      ),
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('我的優惠券'),
                          Text('>'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        FlatButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Image.asset('assets/images/home_64.png'),
                                Text('data')
                              ],
                            )
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}