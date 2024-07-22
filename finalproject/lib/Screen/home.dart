import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  List<Widget> body = [
    SingleChildScrollView(
      child: Column(
        children: [
          // Banner for promotions
          Image.asset('assets/Shoes Web Banner ׀.jpeg'),

          // Row of category buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Running'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Casual'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Formal'),
                ),
              ],
            ),
          ),

          // Grid of featured shoe items
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: List.generate(
              2, // Replace with actual number of featured shoes
              (index) => ShoeListItem(),
            ),
          ),
        ],
      ),
    ),
    SingleChildScrollView(
      child: Column(
        children: [],
      ),
    ),
    const Icon(Icons.home)
  ];
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
              label: 'Cart', icon: Icon(Icons.production_quantity_limits)),
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

class ShoeListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to product detail screen
      },
      child: Card(
        elevation: 15,
        shadowColor: Colors.green,
        child: Column(
          children: [
            Image.asset('assets/Malta High Top Sneakers Shoes Retro.jpeg'),
            // Text('Shoe Name'),
            // Text('\$ Price'),
          ],
        ),
      ),
    );
  }
}
