import 'package:flutter/material.dart';
import 'package:store_app/Screens/CategoryScreen.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryScreen()));
          },
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF0059A7),
            ),
          ),
        ),
        Text('Job title')
      ],
    );
  }
}
