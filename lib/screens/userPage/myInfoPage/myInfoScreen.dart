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
      body: Column(
        children: [],
      ),
    );
  }
}