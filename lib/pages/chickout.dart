import 'package:flutter/material.dart';
import 'package:plants_shop/model/item.dart';
import 'package:plants_shop/provider/cart.dart';
import 'package:plants_shop/shared/app_bar.dart';
import 'package:plants_shop/shared/colors.dart';
import 'package:provider/provider.dart';

class ChickOut extends StatelessWidget {
  const ChickOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text('Chickout'),
        actions: [
          ProductAndPrice(),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 40,
            ),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 570.0,
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: Carttt.selectedProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(Carttt.selectedProduct[index].name),
                        subtitle: Text(
                            '\$ ${Carttt.selectedProduct[index].price.toString()}'),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(Carttt.selectedProduct[index].imgPath),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Carttt.remove(Carttt.selectedProduct[index]);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Pay \$ ${Carttt.price}",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(12),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*

Card(
    child: ListTile(
        subtitle: Text("TEST"),
        leading: CircleAvatar(backgroundImage:AssetImage("PATH"),),
        title: Text("TEST"),
        trailing: IconButton(
        onPressed: () { },
        icon: Icon(Icons.remove)),
  ),)

 */
