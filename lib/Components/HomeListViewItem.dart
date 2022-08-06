import 'package:flutter/material.dart';
import 'package:store_app/Screens/ChooseLocation.dart';

class HomeListviewItem extends StatelessWidget {
  const HomeListviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChoosLocation()));
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
