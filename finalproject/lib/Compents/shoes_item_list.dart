import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoesItemList extends StatelessWidget {
  final String shoesname;
  final String shoespries;
  final String imagepath;
  void Function()? onPressed;

  ShoesItemList(
      {super.key,
      required this.imagepath,
      required this.shoesname,
      required this.shoespries,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 131, 177, 140),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagepath,
              height: 135,
            ),
            Text(shoesname),
            MaterialButton(
              color: Colors.green.shade400,
              onPressed: onPressed,
              child: Text(
                '\$$shoespries',
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
