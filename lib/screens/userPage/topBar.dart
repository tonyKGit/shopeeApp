import 'package:flutter/material.dart';

class TopBar extends StatefulWidget{
  final bool isLogin;
  TopBar(this.isLogin);
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar>{
  String userAccount = "user account";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 170,color: Colors.orange),
        Column(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: widget.isLogin,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.white,width: 0.5
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, '/myStoreScreen');
                            },
                            color: Colors.white,
                            child: Text(
                                '我的賣場   〉'
                            )
                        ),
                      ],
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: widget.isLogin,
                      child: IconButton(icon: Image.asset('assets/images/setting_64.png',height: 25,width: 25), onPressed: null),
                    ),
                    IconButton(icon: Image.asset('assets/images/shopping-cart_64.png',height: 25,width: 25), onPressed: null),
                    IconButton(icon: Image.asset('assets/images/chat-box_64.png',height: 25,width: 25), onPressed: null)
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 15,),
                    // IconButton(iconSize:150,icon: Image.asset('assets/images/user-avatar-info_64.png'),
                    //     onPressed: (){
                    //   Navigator.pushNamed(context, '/myInfoScreen');
                    //     }),
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: IconButton(
                        icon: Image.asset('assets/images/user-avatar-info_64.png'),
                        onPressed: (){
                          Navigator.pushNamed(context, '/myInfoScreen');
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Text('$userAccount'),
                        Text("粉絲 0 | 關注中 0")
                      ],
                    ),
                  ],
                ),
                Visibility(
                    visible: !widget.isLogin,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(onPressed: null,
                            child: Text('登入')
                        ),
                        FlatButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/registerScreen');
                            },
                            child: Text('註冊')
                        ),
                      ],
                    )
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}