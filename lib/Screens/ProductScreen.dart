import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Components/GradientContainer.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        bottom: GradientContainer(text: 'عطر شانيل'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 240,
              child: PageView.custom(
                childrenDelegate: SliverChildListDelegate(
                  List.generate(
                      6,
                      (index) => Container(
                            height: 50,
                            width: 50,
                            color: Colors.green,
                          )),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
            //TODO: customize this part later
            Container(
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 2,
              width: MediaQuery.of(context).size.width * 0.4,
              color: Colors.blue,
            ),
            Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                  child: Text(
                    'عطر شانيل',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0059A7)),
                  ),
                )),
            Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                  child: Text(
                    ': التفاصيل',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                  child: Text(
                    'لوريم ايبسوم دولار سيت أميكونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبورأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا يوت انيم أد مينيم فينايم,كيواس نوستريد',
                    style: TextStyle(fontSize: 12, color: Color(0xFFC8C8C8)),
                  ),
                )),
            Divider(
              endIndent: 25,
              indent: 25,
              height: 10,
              color: Color(0xFFC8C8C8),
              thickness: 1.2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, bottom: 52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xFF0059A7)),
                      height: 40,
                      width: 40,
                      child: InkWell(onTap: () {}, child: Icon(Icons.add))),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text('1')),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xFF0059A7)),
                      height: 40,
                      width: 40,
                      child: InkWell(onTap: () {}, child: Icon(Icons.add)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:45),
              child: Text.rich(
                TextSpan(
                  text: ': اجمالي الحساب',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: ' 150 ',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: 'ج / م',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                  ]),
                  ),
            ),CustomButton(
              padding: const  EdgeInsets.only(bottom: 25),
              childWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ SizedBox(),Text('نقل الي السلة'),  SvgPicture.asset(
                  'assets/shoppingCart.svg',
                  color: Colors.white,
                )],)),  Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                   Text(
                      'Lorem ipsum',
                      style: TextStyle(
                        fontSize: 8,
                        color: Color(0xFF0059A7)),
                    ) ,
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.error_outline,
                      color: Color(0xFF0059A7),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
