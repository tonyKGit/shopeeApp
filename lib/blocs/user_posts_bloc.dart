import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:rxdart/subjects.dart';
import 'package:shopee/models/networkModel/userPostResponse.dart';
import 'package:shopee/models/networkModel/userPosts.dart';

class UserPostsBloc {

  final _UserPostsStream = ReplaySubject<List<UserPosts>>();

  Stream<List<UserPosts>> get userPostsStream => _UserPostsStream.stream;

  readFile() async {
    String jsonString = await rootBundle.loadString('assets/userPostsSample.json');
    Map userMap = jsonDecode(jsonString);
    print(userMap);
    var user = UserPostsResponse.fromJson(userMap);
    print(user.items);
    List<UserPosts> userPostList = user.items.map((e) => UserPosts.fromJson(e)).toList();
    print(userPostList[0].userAccount);
    _UserPostsStream.add(userPostList);
  }
}
