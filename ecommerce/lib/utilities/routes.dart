import 'package:ecommerce/screens/productList.dart';
import 'package:ecommerce/utilities/constatns.dart';
import 'package:flutter/material.dart';

class Routes {
  static final routes = <String,WidgetBuilder>{
    Constans.ROUTE_PRODUCT_DETAIL:(BuildContext context)=>ProductList()
  };
}
