import 'package:finalproject/Model/Cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "My Cart",
            ),
          ),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: value.cartItem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          leading: Image.asset(value.cartItem[index][2]),
                          title: Text(value.cartItem[index][0]),
                          subtitle: Text(
                            // ignore: prefer_interpolation_to_compose_strings
                            '\$' + value.cartItem[index][1],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 55, 81, 58)),
                          ),
                          trailing: IconButton(
                              onPressed: () =>
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeItemCart(index),
                              icon: const Icon(Icons.cancel)),
                        ),
                      ),
                    );
                  },
                )),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Total Cost",
                              style: TextStyle(color: Colors.green[100]),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              value.calculateTotal(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        // pay button
                        Container(
                          child: Row(
                            children: [
                              Text("Pay Now"),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
