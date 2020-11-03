import 'package:flutter/material.dart';

class SMSCertificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String mCertification = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(mCertification)
        ],
      ),
    );
  }
}