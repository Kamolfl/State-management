import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/2-lesson/view_model/products_view_model.dart';
import '1-lesson/provider/counter_view_model.dart';
import '2-lesson/ui/products/products_page.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterViewModel()),
        ChangeNotifierProvider(create: (context) => ProductsViewModel()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsPage(),
    );
  }
}


