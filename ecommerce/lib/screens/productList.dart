import 'package:ecommerce/widgets/productListRow.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductListState();
}

class ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom overflowed hatası için çözüm;
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          "Product List",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white54),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: _buildProductListPage(),
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          if (i == 0) {
            return _buildFilterWidget(screenSize);
          } else if (i == 4) {
            return SizedBox(
              height: 12.0,
            );
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidget(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildFilterButton("Sırala"),
                Container(
                  color: Colors.black,
                  width: 2.0,
                  height: 24.0,
                ),
                _buildFilterButton("Filtrele")
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){
        _buildProductListRow();
      },
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          // icon ile yazı arasına boşluk bırakalım
          SizedBox(
            width: 2.0,
          ),
          Text(
            title,
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(
        name: "Kazak",
        currentPrice: 150,
        originalPrice: 300,
        discount: 50,
        imageUrl:
            "https://www.hemington.com.tr/kirmizi-sac-orgu-lambswool-yun-kazak-1581-17371-15-O.jpg");
  }
}
