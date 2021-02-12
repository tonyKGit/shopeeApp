import 'package:flutter/material.dart';

class MyInfoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        title: Text('修改個人資訊',style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          FlatButton(
              textColor: Colors.orange,
              disabledColor: Colors.orange[100],
              onPressed: (){},
              child: Text('儲存')
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 0,bottom: 0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Text('編輯'
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    )
                  ],
                ),
              ),
              Container(
                height: 35,
                child:
                FlatButton(
                    color: Colors.orange,
                    minWidth: double.infinity,
                    onPressed: (){},
                    child: Text('修改')
                ),
              ),
              Container(
                height: 60,
                child:
                FlatButton(
                  shape: Border(
                      bottom: BorderSide(
                          color: Colors.black.withOpacity(0.2),width: 0.5
                      )
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('我的優惠券'),
                      Text('>'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                child:
                FlatButton(
                  shape: Border(
                      bottom: BorderSide(
                          color: Colors.black.withOpacity(0.2),width: 0.5
                      )
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('我的優惠券'),
                      Text('>'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                child:
                FlatButton(
                  shape: Border(
                      bottom: BorderSide(
                          color: Colors.black.withOpacity(0.2),width: 0.5
                      )
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('我的優惠券'),
                      Text('>'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}