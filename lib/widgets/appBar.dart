import 'package:e_commerce_app/pages/checkout.dart';
import 'package:e_commerce_app/provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ProductAndPrice extends StatelessWidget {
  const ProductAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 22.5,
              child: Container(
                  child: Text(
                    "${Carttt.itemCount}",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 16.0),
                  ),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle)),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckOut()));
                },
                icon: const Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${Carttt.price}",
            style: const TextStyle(fontSize: 18.0),
          ),
        )
      ],
    );
  }
}
