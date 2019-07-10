import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductListState();
}

class ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product List",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white54),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
    );
  }
}