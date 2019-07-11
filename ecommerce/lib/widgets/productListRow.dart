import 'package:ecommerce/utilities/constatns.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductListRow extends StatelessWidget {
  String name;
  int currentPrice;
  int originalPrice;
  int discount;
  String imageUrl;
  ProductListRow(
      {this.name,
      this.currentPrice,
      this.originalPrice,
      this.discount,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildProductItemCard(context),
        _buildProductItemCard(context)
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constans.ROUTE_PRODUCT_DETAIL);
      },
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(this.imageUrl),
              height: 250.0,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.name,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("\$$currentPrice",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 16.0
                      ),),
                      SizedBox(width: 8.0,),
                      Text("\$$originalPrice",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough
                      ),),
                      SizedBox(width: 8.0,),
                      Text("$discount\%",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),),
                      SizedBox(width: 8.0,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
