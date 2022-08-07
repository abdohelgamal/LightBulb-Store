import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store_app/Components/Button.dart';

class ServiceDialog extends StatelessWidget {
  ServiceDialog({
    required this.widgets,
    required this.okFunction,
    Key? key,
  }) : super(key: key);
  void Function()? okFunction;
  List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 35,
                      color: Color(0xFFFF0000),
                    )),
              ),
              ...widgets,
              SizedBox(
                height: 38,
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  height: 28,
                  width: 93,
                  child: CustomButton(
                      onTap: okFunction ?? () {},
                      decoration: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF70BCFF)),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      childWidget: Text(
                        'حسنا',
                        style: TextStyle(fontSize: 9),
                      )))
            ],
          ),
          backgroundColor: Colors.white),
    );
  }
}
