import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bb/timer.dart';
import 'package:bb/constants.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Busters',
      theme: ThemeData(
        primaryColor: mainColor1,
      ),
      home: MainPage(title: 'Main'),
      
    );
  }
}

class MainPage extends StatelessWidget {
  final String title;


  MainPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor1 ,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0), 
      child: AppBar(
        title: Text(title),
        backgroundColor: mainColor1,

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            iconSize: 17.0,
            onPressed: () {
              print('Alarm button pressed.');
              // 알람 버튼 눌렸을 때의 동작을 작성하세요
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 17.0,
            onPressed: () {
              print('Search button pressed.');
              // 검색 버튼 눌렸을 때의 동작을 작성하세요
            },
          ),
        ],
      ),
      ),
      drawer: Drawer(
        backgroundColor: mainColor4,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: mainColor1,
                
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: mainColor4,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('목표 설정'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('다이어리'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('북클럽'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('북리뷰'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('설정'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('개발자에게'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Column(
        
        children: <Widget>[
          
          Card( 
                child: InkWell(
                  // onTap: () {print('Card tapped.')},
                  child: SizedBox(
                    width: 500,
                    height: 180,
                    child: Text('A Card! This is where a card should be'),
                  ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TimerPage()),);
          // 클릭시 수행될 동작을 작성하세요
        },
        backgroundColor: mainColor4,  // 버튼의 배경색
        child: const Text('R'),  // 버튼의 아이콘
      ),
    );
  }
}
