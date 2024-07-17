import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  List<Widget> body = const [Text("data"), Icon(Icons.badge), Icon(Icons.home)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: Column(
        children: [Center(child: body[_currentindex])],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'home', icon: Icon(Icons.production_quantity_limits)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
        currentIndex: _currentindex,
        onTap: (int newindex) {
          setState(() {
            _currentindex = newindex;
          });
        },
      ),
    );
  }
}
