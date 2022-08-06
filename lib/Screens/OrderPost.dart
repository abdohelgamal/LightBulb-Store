import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/GradientContainer.dart';

class OrderPost extends StatelessWidget {
  const OrderPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyAppBar(bottom: GradientContainer(text: 'الاعلان الخاص بك'),),);
  }
}
