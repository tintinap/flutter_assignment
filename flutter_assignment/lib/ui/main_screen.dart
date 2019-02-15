import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }

}


class _MainScreenState extends State<MainScreen> {
    int _currentIndex = 0;
    
    final _mainScreenOption = [
      Text('Home'),
      Text('Notify'),
      Text('Map'),
      Text('Profile'),
      Text('Setup'),
    ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),

      body: Center(
        child: _mainScreenOption.elementAt(_currentIndex),
      ),
      
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          //sets the background color of bottomNavigationBar
          canvasColor: Theme.of(context).primaryColor,
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem( icon: Icon(Icons.dashboard), title: Text("Home"),),
            BottomNavigationBarItem( icon: Icon(Icons.notifications), title: Text("Notify"),),
            BottomNavigationBarItem( icon: Icon(Icons.navigation), title: Text("Navigation"),),
            BottomNavigationBarItem( icon: Icon(Icons.person), title: Text("Profile"),),
            BottomNavigationBarItem( icon: Icon(Icons.settings), title: Text("Setup"),),
          ],

          fixedColor: Colors.blue,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}