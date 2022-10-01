import 'package:e_commerce_app/model/item.dart';
import 'package:e_commerce_app/widgets/appBar.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item product;

  Details({Key? key, required this.product}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 141, 95),
        title: const Text("Details screen"),
        actions: const [
          ProductAndPrice(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imagePath),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    '\$ ${widget.product.price}',
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 129, 129),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Text(
                          'New',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            size: 25.0,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 25.0,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 25.0,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 25.0,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 25.0,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.edit_location,
                            size: 25.0,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 2.5,
                          ),
                          Text(
                            widget.product.location,
                            style: const TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Details:',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                    maxLines: isShowMore ? 2 : null,
                    overflow: TextOverflow.fade,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isShowMore = !isShowMore;
                      });
                    },
                    child: Text(
                      isShowMore ? 'show more' : 'show less',
                      style: const TextStyle(fontSize: 17.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
