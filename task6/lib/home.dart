import 'package:flutter/material.dart';
import 'package:task6/aboutus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Flutter-fly-task6 (Home)")),
        backgroundColor: Colors.amber,
      ),
      body: Column(children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child:
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const aboutus()));
              }, child: const Text("About US")),
        ))
      ]),
    );
  }
}
