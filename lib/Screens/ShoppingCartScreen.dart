import 'package:flutter/material.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/GradientContainer.dart';
import 'package:store_app/Components/ShoppingCartItem.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        bottom: GradientContainer(text: 'سلة المشتريات'),
      ),
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return ShoppingCartItem();
          }),
    );
  }
}
