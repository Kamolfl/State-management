import 'package:flutter/material.dart';
import 'package:state_managements/2-lesson/data/models/product_model/product_model.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration:
      BoxDecoration(border: Border.all(color: Colors.black)),
      child: ListTile(
        title: Text(product.title),
        subtitle: Image.network(product.image, height: 60),
      ),
    );
  }
}
