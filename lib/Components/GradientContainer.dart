import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget implements PreferredSizeWidget {
  GradientContainer({Key? key, required this.text})
      : preferredSize = Size.fromHeight(0),
        super(key: key);
  @override
  final Size preferredSize;
 final String text;
  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF0059A7), Color(0xFF3C8ED6)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         SizedBox(
            width: 80,
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 1))),
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white),
            ),
          ), SizedBox(
            width: 80,
            child: TextButton.icon(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  Navigator.pop(context);
                },
                label: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(Icons.play_arrow),
                ),
                icon: Text('رجوع')),
          ),
          
        ],
      ),
    );
  }
}
