import 'package:flutter/material.dart';

class BuyListEvent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Row(
          //   children: [
          //     Text('1111最強購物')
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //   ],
          // ),
          Row(
            children: [
              Flexible(
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/buyListScreen',arguments: 3);
                  },
                  shape: Border(
                      bottom: BorderSide(
                          color: Colors.black.withOpacity(0.2),width: 0.5
                      )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("購買清單"),
                          Text("查看全部 >")
                        ],
                      ),
                      SizedBox(height: 15,),
                    ],
                  )
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child:
                FlatButton(
                    onPressed: (){
                      //pass page to buyListScreen
                      Navigator.pushNamed(context, '/buyListScreen',arguments: 0);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('首頁',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
              SizedBox(
                child:
                FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/buyListScreen',arguments: 1);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('待出貨',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
              SizedBox(
                child:
                FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/buyListScreen',arguments: 2);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('待收貨',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
              SizedBox(
                child:
                FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/buyListScreen',arguments: 3);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('評價',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
            ],
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}