import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

class ChatMessageMe extends StatelessWidget {
  const ChatMessageMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
          Expanded(
              child: Message(
            triangleX1: 10,
            triangleX2: 70,
            triangleX3: 0,
            triangleY1: 0,
            child: Container(
              color: Colors.white,
              child: Text(
                  'لوريم ايبسوم دولار سيت أميت كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا  يوت انيم أد مينيم فينايم,كيواس نوستريد'),
            ),
          ))
        ],
      ),
    );
  }
}

class ChatMessageOther extends StatelessWidget {
  const ChatMessageOther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Message(
            triangleX1: 10,
            triangleX2: 70,
            triangleX3: 0,
            triangleY1: 0,
            child: Container(
              color: Color(0xFF70BCFF),
              child: Text(
                  'لوريم ايبسوم دولار سيت أميت كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا  يوت انيم أد مينيم فينايم,كيواس نوستريد'),
            ),
          )),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: CircleAvatar(
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
