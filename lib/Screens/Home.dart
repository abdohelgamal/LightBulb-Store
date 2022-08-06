import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/ListViewItem.dart';

class Home extends StatefulWidget {
 const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int bttmindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bttmindex,
          onTap: (value) {
            setState(() {
              bttmindex = value;
            });
          },
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xFF0059A7),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/more.svg',
                  height: 25,
                  color: bttmindex == 0 ? Color(0xFF0059A7) : Colors.black,
                ),
                label: 'المزيد'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/profile.svg',
                  height: 25,
                  color: bttmindex == 1 ? Color(0xFF0059A7) : Colors.black,
                ),
                label: 'حسابي'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/discount.svg',
                  height: 25,
                  color: bttmindex == 2 ? Color(0xFF0059A7) : Colors.black,
                ),
                label: 'العروض'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home.svg',
                  height: 25,
                  color: bttmindex == 3 ? Color(0xFF0059A7) : Colors.black,
                ),
                label: 'الرئيسية')
          ]),
      resizeToAvoidBottomInset: true,
      appBar: MyAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Row(
            children: [
              Text(
                'اعلان',
                style: TextStyle(color: Color(0xFFFF0000)),
              ),
              Container(
                height: 7,
                width: 7,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFF0000)),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Placeholder(
            color: Colors.grey,
            fallbackHeight: 150,
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'الخدمات الشخصية',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'اختر الخدمة التي تحتاجها الان',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                      height: 145,
                      child: ListView(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        itemExtent: 92,
                        scrollDirection: Axis.horizontal,
                        children:
                            List.generate(10, (index) => const ListviewItem()),
                      )),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      height: 2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.cyan),
                  ),
                  SizedBox(
                      height: 145,
                      child: ListView(
                        padding: const EdgeInsets.only(top: 15),
                        itemExtent: 92,
                        scrollDirection: Axis.horizontal,
                        children:
                            List.generate(10, (index) => const ListviewItem()),
                      )),
                  SizedBox(
                      height: 145,
                      child: ListView(
                        padding: const EdgeInsets.only(bottom: 15),
                        itemExtent: 92,
                        scrollDirection: Axis.horizontal,
                        children:
                            List.generate(10, (index) => const ListviewItem()),
                      )),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.cyan),
                  ),
                ],
              ),
            ),
          )
        ],
      ))),
    );
  }
}
