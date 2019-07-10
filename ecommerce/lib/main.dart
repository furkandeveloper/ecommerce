import 'package:ecommerce/screens/productList.dart';
import 'package:ecommerce/utilities/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ProductList(),
      routes: Routes.routes,
    );
  }

}