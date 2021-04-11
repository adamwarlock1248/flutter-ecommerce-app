import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/components/search_box.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_product_category.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_product_grid_builder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
    @required this.categories,
    @required this.products,
  }) : super(key: key);

  final List categories;
  final List products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(onChanged: (value) {}),
        ProductCategory(categories: categories),
        SizedBox(height: 10),
        Flexible(child: buildProductGridView(context, products))
      ],
    );
  }
}
