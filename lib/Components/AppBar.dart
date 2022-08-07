import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({this.bottom,Key? key})
      : preferredSize = Size.fromHeight(bottom == null ? 65 : 130),
        super(key: key);
  PreferredSizeWidget? bottom;
  @override
  final Size preferredSize;

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(bottom: widget.bottom,
      elevation: 0,
      leadingWidth: 100,
      toolbarHeight: widget.bottom == null ? 65 : 130,
      backgroundColor: Colors.white,
      centerTitle: true,
     actions : [Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Color(0xFF0059A7), shape: BoxShape.circle)),
            SvgPicture.asset('assets/gears.svg')
          ],
        ),
      )],
      title: const Text(
        'Logo',
        style: TextStyle(color: Colors.black),
      ),
      leading: 
        Row(
          children: [
           
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xFF0059A7),
                )), IconButton(
                onPressed: () {},
                icon:  SvgPicture.asset(
                  'assets/shoppingCart.svg',
                  color: Color(0xFF0059A7),
                )),
          ],
        )
      ,
    );
  }
}
