import 'package:e_commerce_app/provider/cart.dart';
import 'package:e_commerce_app/widgets/appBar.dart';
import 'package:e_commerce_app/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text('Checkout screen'),
        actions: const [
          ProductAndPrice(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 400.0,
              child: ListView.builder(
                itemCount: carttt.selectProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text("${carttt.selectProducts[index].name}"),
                      subtitle: Text(
                          "\$ ${carttt.selectProducts[index].price} - ${carttt.selectProducts[index].location}"),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(carttt.selectProducts[index].imagePath),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            carttt.delete(carttt.selectProducts[index]);
                          },
                          icon: const Icon(Icons.remove)),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(btnGreen),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay: \$${carttt.price}",
              style: const TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
