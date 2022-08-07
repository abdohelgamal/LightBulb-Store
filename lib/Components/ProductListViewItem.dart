import 'package:flutter/material.dart';
import 'package:store_app/Screens/ProductScreen.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProductScreen();
          },
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 120,
                    width: 145,
                    color: Colors.red,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 60,
                    color: Color(0xFF0059A7).withOpacity(0.72),
                    child: Text(
                      '150 ج',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              )),
          Text(
            'عطر شانيل',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'لوريم ايبسم',
            style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Color(0xFFCECECE)),
          ),
        ],
      ),
    );
  }
}
