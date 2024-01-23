import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/2-lesson/ui/products/widgets/product_item.dart';
import 'package:state_managements/2-lesson/view_model/products_view_model.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Products Page  '),
      ),
      body: Consumer<ProductsViewModel>(builder: (context, myProvider, child) {
        if (myProvider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (myProvider.products.isNotEmpty) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: myProvider.products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductItem(product: myProvider.products[index]);
              });
        }
        return const Text('Data yo`q');
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductsViewModel>().getAllProducts();
        },
      ),
    );
  }
}
