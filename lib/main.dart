import 'package:flutter/material.dart';
import 'package:shopping_cart/Screens/product_list_screen.dart';
import 'package:shopping_cart/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: bColor
          )
        )
      ),
      
      home: ProductListScreen(),
    );
  }
}

