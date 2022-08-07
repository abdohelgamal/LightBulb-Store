import 'package:flutter/material.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Screens/ChatScreen.dart';

class OrderPostListViewItem extends StatelessWidget {
  const OrderPostListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFECECEC)),
          borderRadius: BorderRadius.circular(9)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Column(
              children: [
                ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                      height: 25,
                      width: 25,
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                size: 10,
                              )),
                    )),
                Text(
                    'لوريم ايبسوم دولار سيت أميت كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا  يوت انيم أد مينيم فينايم,كيواس نوستريد',
                    style: TextStyle(
                      fontSize: 10,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '05:00 AM',
                      style: TextStyle(fontSize: 6, color: Color(0xFFAAAAAA)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Color(0XFFAAAAAA),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 30,
              width: MediaQuery.of(context).size.width * 0.5,
              child: CustomButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                },
                decoration: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2))),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF70BCFF))),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                childWidget: Text(
                  'تواصل الان',
                  style: TextStyle(fontSize: 9),
                ),
              ))
        ],
      ),
    );
  }
}
