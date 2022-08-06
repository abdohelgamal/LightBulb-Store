import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.childWidget,
        this.onTap ,this.padding,
        this.decoration, })
      : super(key: key);
   Widget childWidget;
   void Function()? onTap;
    ButtonStyle? decoration;
 EdgeInsetsGeometry?  padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 75,
       margin: padding ?? const EdgeInsets.all(0),
      child: ElevatedButton(
        style: decoration ?? ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Color(0xFF70BCFF)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Color(0xFF70BCFF))))),
        onPressed: onTap ?? () {},
        child:childWidget
      ),
    );
  }
}
