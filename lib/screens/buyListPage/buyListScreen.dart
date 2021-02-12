import 'package:flutter/material.dart';
import 'package:shopee/models/home/statusItemList.dart';
import 'package:shopee/screens/buyListPage/widgets/statusItem.dart';
import 'package:shopee/screens/buyListPage/widgets/statusListItem.dart';

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
      // body: Column(
      //   children: [
      //     Container(
      //       height: 50,
      //       child:
      //       ListView(
      //         controller: _mController,
      //         shrinkWrap: true,
      //         physics: ClampingScrollPhysics(),
      //         scrollDirection: Axis.horizontal,
      //         children: [
      //           for(int i = 0 ; i<statusItemList.length ; i++)
      //             if(_currentPage == i)
      //               Container(
      //                 child: FlatButton(
      //                   shape: Border(
      //                       bottom: BorderSide(
      //                           color: Colors.orange,
      //                           width: 0.8
      //                       )
      //                   ),
      //                   child: Text(statusItemList[i].mTitle,
      //                     style: TextStyle(color: Colors.orange),
      //                   ),
      //                 ),
      //               )
      //             else
      //               Container(
      //                 //key: dataKey0,
      //                 child: FlatButton(
      //                   shape: Border(
      //                       bottom: BorderSide(
      //                           color: Colors.transparent,
      //                           width: 0
      //                       )
      //                   ),
      //                   onPressed: (){
      //                     _currentPage = i;
      //                     _pageController.animateToPage(i, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      //                     //Scrollable.ensureVisible(dataKey0.currentContext);
      //                     setState(() {
      //
      //                     });
      //                   },
      //                   child: Text(statusItemList[i].mTitle,
      //                     style: TextStyle(color: Colors.black),
      //                   ),
      //                 ),
      //               ),
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //         child:PageView.builder(
      //             scrollDirection: Axis.horizontal,
      //             onPageChanged: _onPageChanged,
      //             controller: _pageController,
      //             itemCount: statusItemList.length,
      //             itemBuilder: (context, i) => StatusItem(i)
      //         )
      //     ),
      //   ],
      // ),
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
                child: Text("待付款"),
              ),
              Container(
                width: 80,
                height: 50,
                child: Text("待出貨"),
              ),
              Container(
                width: 80,
                height: 50,
                child: Text("待收貨"),
              ),
              Container(
                width: 80,
                height: 50,
                child: Text("訂單已完成"),
              ),
              Container(
                width: 80,
                height: 50,
                child: Text("已取消"),
              ),
              Container(
                width: 80,
                height: 50,
                child: Text("退貨/退款"),
              ),
            ],

          ),
          Expanded(
              child:  TabBarView(
                  controller: tabController,
                  children:[
                    Container(
                      child: Text("123"),
                    ),
                    Container(
                      child: Text("123"),
                    ),
                    Container(
                      child: Text("123"),
                    ),
                    Container(
                      child: Text("123"),
                    ),
                    Container(
                      child: Text("123"),
                    ),
                    Container(
                      child: Text("123"),
                    ),
                  ]
              ),
          )
        ],
      )
    );
  }
}