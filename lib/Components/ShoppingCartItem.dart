import 'package:flutter/material.dart';
import 'package:store_app/Components/Button.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عطر شانيل',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0059A7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'التفاصيل :',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميكونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبورأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوايوت انيم أد مينيم فينايم,كيواس نوستريد',
                        style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFFC8C8C8),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'عدد المنتج : 1',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.close))
            ],
          ),
          Divider(
            color: Color(0xFFECECEC),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 60 //MediaQuery.of(context).size.width * 0.15,
                  ),
              SizedBox(
                  width: 120,
                  height: 28,
                  child: CustomButton(
                    childWidget: Text(
                      'متابعة الشراء',
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  )),
              Text.rich(TextSpan(
                  text: ' 5.400 ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0059A7),
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: ' ج/م ',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold))
                  ])),
            ],
          )
        ],
      ),
    );
  }
}
