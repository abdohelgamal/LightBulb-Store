import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Components/ServiceDialog.dart';
import 'package:store_app/Components/GradientContainer.dart';
import 'package:store_app/Screens/ServicePost.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            padding: const EdgeInsets.fromLTRB(35, 10, 35, 40),
            child: CustomButton(
              childWidget: Text('نشر الاعلان'),
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: ((context) {
                      return ServiceDialog(
                        widgets: [
                          Text(
                            'تم ارسال بياناتك بنجاح',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0059A7),
                                fontSize: 20),
                          ),
                          Text(
                            '  سيتم مراجعة بيانات المنتج والنشر',
                            style: TextStyle(
                                color: Color(0xFF0059A7), fontSize: 16),
                          )
                        ],
                        okFunction: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ServicePost())));
                        },
                      );
                    }));
              },
            )),
        resizeToAvoidBottomInset: true,
        appBar: MyAppBar(
          bottom: GradientContainer(
            text: 'خدمة نجار',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تفاصيل الاعلان',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      //TODO: add counter text
                      height: 160,
                      child: TextField(
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            hintText:
                                'مثال : انا اريد نجار محترف لتصليح باب منزل',
                            hintStyle: TextStyle(
                                fontSize: 10, color: Color(0xFFCECECE)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: BorderSide(
                                    width: 0.0, color: Color(0xFFCECECE)))),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'العنوان',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            prefixIconConstraints:
                                BoxConstraints.tightForFinite(),
                            suffixIconConstraints:
                                BoxConstraints.tightForFinite(),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'تعديل',
                                style: TextStyle(
                                    color: Color(0xFF70BCFF), fontSize: 10),
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/locationConfirm.svg',
                                height: 11,
                                width: 15,
                                color: Color(0xFFCECECE),
                              ),
                            ),
                            hintText: '3 ش عبالمجيد زايدان - المنيب - الجيزة',
                            hintStyle: TextStyle(
                                fontSize: 10, color: Color(0xFFCECECE)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide:
                                    BorderSide(color: Color(0xFFCECECE)))),
                      ),
                    ),
                    TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(3),
                            hintText: 'اكتب علامة مميزة للعنوان',
                            hintStyle: TextStyle(
                                fontSize: 10, color: Color(0xFFCECECE)),
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide:
                                    BorderSide(color: Color(0xFFCECECE))))),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text('تحديد السعر'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hintText: 'من',
                                    hintStyle: TextStyle(
                                        fontSize: 10, color: Color(0xFFCECECE)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        borderSide: BorderSide(
                                            color: Color(0xFFCECECE)))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: SvgPicture.asset('assets/switchValues.svg'),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hintText: 'الي',
                                    hintStyle: TextStyle(
                                        fontSize: 10, color: Color(0xFFCECECE)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        borderSide: BorderSide(
                                            color: Color(0xFFCECECE)))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'لوريم ايبسوم دولار سيت أميت \n كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور \n أنكايديديونتيوت لابوري ات دولار ماجنا أليكيو \n يوت انيم أد مينيم فينايم,كيواس نوستريد',
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
