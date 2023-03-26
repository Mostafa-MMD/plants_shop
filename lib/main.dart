import 'package:flutter/material.dart';
import 'package:plants_shop/model/item.dart';
import 'package:plants_shop/pages/chickout.dart';
import 'package:plants_shop/pages/details.dart';
import 'package:plants_shop/pages/home.dart';
import 'package:plants_shop/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
