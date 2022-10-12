import 'package:flutter/material.dart';
import 'package:project_test/productlist_page.dart';
import 'package:project_test/provider/product_provider.dart';
// import 'package:project_test/homepage.dart';
// import 'package:project_test/slider.dart';
// import 'package:project_test/gridview.dart';
// import 'package:project_test/login_page.dart';
// import 'package:project_test/singin_signup/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        home: ProductListPage(),
      ),
    ),
  );
}
