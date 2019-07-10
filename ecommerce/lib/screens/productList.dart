import 'package:flutter/material.dart';

class ProductList extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>ProductListState();
}

class ProductListState extends State<ProductList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce",textDirection: TextDirection.ltr,),
      ),
    );
  }

}