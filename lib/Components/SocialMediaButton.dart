import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
   SocialMediaButton({Key? key, required this.text, required this.svgPath,this.onTap})
      : super(key: key);
  final String text;
  final String svgPath;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ?? () {},
      child: Container(
        width: 100,
        padding: const EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white, width: 1))),
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(
              width: 16,
            ),
            SvgPicture.asset(svgPath)
          ],
        ),
      ),
    );
  }
}
