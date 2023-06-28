import 'package:flutter/material.dart';

final Color mainColor1 =  Color(0xFF0E2954);
final Color mainColor2 =  Color(0xFF1F6E8C);
final Color mainColor3 =  Color(0xFF2E8A99);
final Color mainColor4 = Color(0xFF84A7A1);
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
      home: MainPage(),//title: 'Flutter Drawer Demo Home Page'),
      
    );
  }
}

class MainPage extends StatelessWidget {
  final String title;


  MainPage({Key key= const Key(''), this.title='Book Buster!!'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              print('Alarm button pressed.');
              // 알람 버튼 눌렸을 때의 동작을 작성하세요
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button pressed.');
              // 검색 버튼 눌렸을 때의 동작을 작성하세요
            },
          ),
        ],
      ),
      drawer: Drawer(
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
                  color: Colors.white,
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
                  splashColor: Colors.blue,
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
          // 클릭시 수행될 동작을 작성하세요
        },
        backgroundColor: Colors.blue,  // 버튼의 배경색
        child: const Text('R'),  // 버튼의 아이콘
      ),
    );
  }
}
