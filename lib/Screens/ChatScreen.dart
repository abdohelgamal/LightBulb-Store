import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/ChatMessageTiles.dart';
import 'package:store_app/Components/GradientContainer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MyAppBar(
        bottom: GradientContainer(text: 'الشات'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xFF70BCFF),
                      borderRadius: BorderRadius.circular(9)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 40,
                          ),
                          Text(
                            'الاسطي احمد وائل',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  size: 9,
                                )),
                      ),
                    ],
                  ),
                ),
                ...List.generate(5, (index) {
                  if (index % 2 == 0) {
                    return ChatMessageMe();
                  } else {
                    return ChatMessageOther();
                  }
                })
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/chatSendVoice.svg'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/chatSendFile.svg'),
                  onPressed: () {},
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          hintText: 'دردشة',
                          hintStyle: TextStyle(color: Color(0xFF0059A7)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.5, color: Color(0xFF0059A7))),
                          suffixIcon: IconButton(
                            icon: SvgPicture.asset('assets/chatSend.svg'),
                            onPressed: () {},
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
