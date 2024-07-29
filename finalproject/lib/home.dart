import 'package:finalproject/Compents/shoes_item_list.dart';
import 'package:finalproject/Model/Cart_model.dart';
import 'package:finalproject/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Let's order Shoes \nfor you",
                  style: GoogleFonts.notoSerif().copyWith(
                    fontSize: 36, // Adjust font size as needed
                    fontWeight: FontWeight.bold, // Adjust font weight as needed
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Divider(),
              ),
              Image.asset("assets/Shoes Web Banner ׀ (1).jpeg"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Divider(),
              ),
              const SizedBox(
                height: 14,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Leatest Collections",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              // Product display
              Expanded(child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopeitem.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemBuilder: (context, index) {
                      return ShoesItemList(
                        imagepath: value.shopeitem[index][2],
                        shoesname: value.shopeitem[index][0],
                        shoespries: value.shopeitem[index][1],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItemtoCart(index);
                        },
                      );
                    },
                  );
                },
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ));
        },
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.green,
        ),
      ),
    );
  }
}
