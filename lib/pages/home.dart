import 'package:e_commerce_app/model/item.dart';
import 'package:e_commerce_app/pages/details.dart';
import 'package:e_commerce_app/provider/cart.dart';
import 'package:e_commerce_app/widgets/appBar.dart';
import 'package:e_commerce_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    return Scaffold(
      drawer: const DDrawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 141, 95),
        title: const Text("Home"),
        actions: const [
          ProductAndPrice(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 30.0,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      product: items[index],
                    ),
                  ),
                );
              },
              child: GridTile(
                child: Stack(
                  children: [
                    Positioned(
                      top: -3.0,
                      bottom: -9.0,
                      left: 0.0,
                      right: 0.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(items[index].imagePath),
                      ),
                    ),
                  ],
                ),
                footer: GridTileBar(
                  // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                  trailing: IconButton(
                    color: const Color.fromARGB(255, 62, 94, 70),
                    onPressed: () {
                      carttt.add(items[index]);
                    },
                    icon: const Icon(Icons.add),
                  ),

                  leading: const Text('\$ 12.99'),
                  title: const Text(""),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
