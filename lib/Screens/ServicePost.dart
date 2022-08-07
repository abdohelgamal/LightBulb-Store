import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/GradientContainer.dart';
import 'package:store_app/Components/ServicePostListViewItem.dart';

class ServicePost extends StatelessWidget {
  const ServicePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        bottom: GradientContainer(text: 'الاعلان الخاص بك'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent, shape: BoxShape.circle),
                  ),
                  title: Text(
                    'name',
                    style: TextStyle(fontSize: 12),
                  ),
                  subtitle: Text(
                    'describtion',
                    style: TextStyle(fontSize: 10, color: Color(0xFFCECECE)),
                  ),
                  trailing: IconButton(
                    icon: SvgPicture.asset('assets/menu.svg'),
                    onPressed: () {},
                  ),
                ),
                Text(
                    'لوريم ايبسوم دولار سيت أميت كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا  يوت انيم أد مينيم فينايم,كيواس نوستريد',
                    style: TextStyle(
                      fontSize: 14,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: SvgPicture.asset(
                    'assets/time.svg',
                    height: 10,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
                Text(
                  '7 ابريل',
                  style: TextStyle(
                    fontSize: 6,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: SvgPicture.asset(
                    'assets/mapPicker.svg',
                    height: 10,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
                Text('مصر',
                    style: TextStyle(fontSize: 6, color: Color(0xFFAAAAAA)))
              ],
            ),
          ),
          Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 43, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFECECEC))),
                    height: 32,
                    child: Row(
                      children: [
                        Text.rich(TextSpan(
                            text: ': من',
                            style: TextStyle(
                                fontSize: 9, color: Color(0xFF0059A7)),
                            children: [
                              TextSpan(
                                  text: ' 1.100.000 ',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF70BCFF))),
                              TextSpan(
                                  text: ' ج/م ',
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.black)),
                            ]))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFECECEC))),
                    height: 32,
                    child: Row(
                      children: [
                        Text.rich(TextSpan(
                            text: ': الى',
                            style: TextStyle(
                                fontSize: 9, color: Color(0xFF0059A7)),
                            children: [
                              TextSpan(
                                  text: ' 1.300.000 ',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF70BCFF))),
                              TextSpan(
                                  text: ' ج/م ',
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.black)),
                            ]))
                      ],
                    ))
              ],
            ),
          ),
          Divider(
            thickness: 1.5,
            endIndent: 43,
            indent: 43,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
              child: Row(
                children: [
                  SvgPicture.asset('assets/comment.svg'),
                  Text(' 152 تعليق',
                      style: TextStyle(fontSize: 14, color: Color(0xFF70BCFF)))
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  itemBuilder: (context, index) {
                    return ServicePostListViewItem();
                  }))
        ],
      ),
    );
  }
}
