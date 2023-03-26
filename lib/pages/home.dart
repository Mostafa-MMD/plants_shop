import 'package:flutter/material.dart';
import 'package:plants_shop/pages/chickout.dart';
import 'package:plants_shop/pages/details.dart';
import 'package:plants_shop/provider/cart.dart';
import 'package:plants_shop/shared/app_bar.dart';
import 'package:provider/provider.dart';
import '../model/item.dart';
import '../shared/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/test.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  accountName: Text(
                    "Mostafa Mohamed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  accountEmail: Text(
                    "mostafa19@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onTap: () {


                  },
                ),
                Divider(
                  height: 0.5,
                  thickness: 0.9,
                  color: Colors.black38,
                ),
                ListTile(
                  title: Text(
                    "My products",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChickOut(),
                      ),
                    );
                  },
                ),
                Divider(
                  height: 0.5,
                  thickness: 0.7,
                  color: Colors.black38,
                ),
                ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(
                    Icons.help_center,
                    size: 30,
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 0.5,
                  thickness: 0.7,
                  color: Colors.black38,
                ),
                ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(
                    Icons.exit_to_app,
                    size: 30,
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 0.5,
                  thickness: 0.7,
                  color: Colors.black38,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text(
                "Developed by Mostafa Mohamed (MMD)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          ProductAndPrice(),
        ],
        backgroundColor: appbarGreen,
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(product: items[index]),
                    ),
                  );
                },
                child: GridTile(
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(items[index].imgPath),
                        ),
                      ),
                    ],
                  ),
                  footer: GridTileBar(
                    // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () {
                        Carttt.add(items[index]);
                      },
                      icon: Icon(Icons.add),
                    ),

                    leading: Text(items[index].price.toString()),
                    title: Text(
                      "",
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
