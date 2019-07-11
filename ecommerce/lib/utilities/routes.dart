import 'package:ecommerce/screens/productDetail.dart';
import 'package:ecommerce/utilities/constatns.dart';
import 'package:flutter/material.dart';

class Routes {
  static final routes = <String,WidgetBuilder>{
    Constans.ROUTE_PRODUCT_DETAIL:(BuildContext context)=>ProductDetail()
  };
}
