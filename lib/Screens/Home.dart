import 'package:daily_news/Extra/HomeState.dart';
import 'package:daily_news/Extra/ProfileState.dart';
import 'package:daily_news/Extra/SearchState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _SelectedIndex = 0;
  static const List<Widget> _WidgetOption =<Widget>[
    HomeBody(),
    Search(),
    Profile()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void _OnItemTapped(int index){
    setState(() {
      _SelectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text('Roll-Up',style: TextStyle(color:Colors.white ),),
      //   backgroundColor: Colors.black,
      //   actions: <Widget>[
      //     Icon(CupertinoIcons.chat_bubble_text,color: Colors.white,size: 30,)
      //   ],
      // ),
      body: Container(
        // height: double.infinity,
        child: _WidgetOption.elementAt(_SelectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff03DAC5),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: 'Profile')
        ],
        currentIndex: _SelectedIndex,
        selectedItemColor: Colors.white,
        onTap: _OnItemTapped,
      ),
    );
  }
}
