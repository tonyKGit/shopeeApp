import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopee/models/home/statusItemList.dart';
import 'package:shopee/screens/buyListPage/widgets/statusItem.dart';
import 'package:shopee/screens/buyListPage/widgets/statusListItem.dart';
import 'package:shopee/screens/userPage/widgets/buyListItem.dart';

class BuyListScreen extends StatefulWidget{
  @override
  _BuyListScreenState createState() => _BuyListScreenState();
}

class _BuyListScreenState extends State<BuyListScreen> with SingleTickerProviderStateMixin{
  int _currentPage = 0;
  TabController tabController;

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  final PageController _pageController = PageController(
      initialPage: 0
  );

  final _mController = ScrollController();
  final dataKey0 = new GlobalKey();
  final dataKey1 = new GlobalKey();
  final dataKey2 = new GlobalKey();
  final dataKey3 = new GlobalKey();
  final dataKey4 = new GlobalKey();
  final dataKey5 = new GlobalKey();

  @override
  void initState(){
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    dynamic obj = ModalRoute.of(context).settings.arguments;
    _currentPage = obj;
    tabController.animateTo(_currentPage);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('購買清單'),
        actions: [
          IconButton(icon: Image.asset('assets/images/search_32.png'), onPressed: null),
          IconButton(icon: Image.asset('assets/images/chat-box_64.png'), onPressed: null),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            indicatorColor: Colors.orangeAccent,
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.black,
            isScrollable: true,
            tabs: [
              Container(
                width: 80,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("待付款"),
                ),
              ),
              Container(
                width: 80,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("待出貨"),
                ),
              ),
              Container(
                width: 80,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("待收貨"),
                ),
              ),
              Container(
                width: 80,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("訂單已完成"),
                ),
              ),
              Container(
                width: 80,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("已取消"),
                ),
              ),
              Container(
                width: 80,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("退貨/退款"),
                ),
              ),
            ],

          ),
          Expanded(
              child:  TabBarView(
                  controller: tabController,
                  children:[
                    Container(
                      //color: Colors.white.withOpacity(0.90),
                      child: ListView(
                        children: [
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: SizedBox(height: 10),
                          ),
                          BuyListItem(),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: SizedBox(height: 10),
                          ),
                          BuyListItem(),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: SizedBox(height: 10),
                          ),
                          BuyListItem(),
                        ],
                      )
                    ),
                    Container(
                      child: Text("Second Tab"),
                    ),
                    Container(
                      child: Text("Third Tab"),
                    ),
                    Container(
                      child: Text("Fourth Tab"),
                    ),
                    Container(
                      child: Text("Fifth Tab"),
                    ),
                    Container(
                      child: Text("Sixth Tab"),
                    ),
                  ]
              ),
          )
        ],
      )
    );
  }
}