import 'package:e_commerce_app/pages/checkout.dart';
import 'package:e_commerce_app/pages/home.dart';
import 'package:flutter/material.dart';

class DDrawer extends StatelessWidget {
  const DDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/test.jpg"),
                      fit: BoxFit.cover),
                ),
                accountName: Text("mostafa mohamed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                accountEmail: Text("mostafa@gmail.com"),
                currentAccountPictureSize: Size.square(99),
                // currentAccountPicture: CircleAvatar(
                //     radius: 55,
                //     backgroundImage: AssetImage("assets/img/ali.jpg")),
              ),
              ListTile(
                  title: const Text("Home"),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  }),
              ListTile(
                  title: const Text("My products"),
                  leading: const Icon(Icons.add_shopping_cart),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CheckOut()));
                  }),
              ListTile(
                  title: const Text("About"),
                  leading: const Icon(Icons.help_center),
                  onTap: () {}),
              ListTile(
                  title: const Text("Logout"),
                  leading: const Icon(Icons.exit_to_app),
                  onTap: () {}),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: const Text("Developed by Mostafa Mohamed 2022",
                style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
