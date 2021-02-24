import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopee/blocs/user_posts_bloc.dart';
import 'package:shopee/screens/home/homeScreen.dart';
import 'package:shopee/screens/buyListPage/buyListScreen.dart';
import 'package:shopee/screens/registerPage/registerScreen.dart';
import 'package:shopee/screens/userPage/editPhotoScreen.dart';
import 'package:shopee/screens/userPage/myInfoPage/myInfoScreen.dart';
import 'package:shopee/screens/userPage/myStorePage/myStoreScreen.dart';
import 'package:shopee/screens/userPage/newPost.dart';
import 'package:shopee/screens/userPage/userScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopee/screens/registerPage/smsCertificationScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

  // SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor:Colors.transparent);
  // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => UserPostsBloc(),
      child:       MaterialApp(
        title: 'Flutter Shopee',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/homeScreen': (context) => HomeScreen(),
          '/userScreen': (context) => UserScreen(),
          '/buyListScreen': (context) => BuyListScreen(),
          '/registerScreen': (context) => RegisterScreen(),
          '/smsCertificationScreen': (context) => SMSCertificationScreen(),
          '/myInfoScreen': (context) => MyInfoScreen(),
          '/myStoreScreen' : (context) => MyStoreScreen(),
          '/editPhotoScreen': (context) => EditPhotoScreen(),
          '/newPostScreen': (context) => NewPostScreen(),
        },
        home: HomeScreen(),
      ),
    );
  }
}
