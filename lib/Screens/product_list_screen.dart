
import 'package:flutter/material.dart';
import 'package:shopping_cart/Widgets/sizedbox.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        actions: [
          Badge(
            label: Text("0"),
            child: Icon(Icons.shopping_cart_outlined),
          ),
          
          width20,
        ],
      ),
    );
  }
}