import 'package:flutter/material.dart';
import 'package:project_test/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductProvider>(context);
    productProvider.getList();
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...productProvider.list.map((e) {
            return Text(e.title ?? "Title is null");
          }).toList()
        ],
      ),
    );
  }
}
