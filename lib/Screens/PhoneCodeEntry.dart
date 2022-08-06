import 'package:flutter/material.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Screens/Home.dart';
import 'package:store_app/Screens/UserLogin.dart';

class PhoneCodeEntry extends StatelessWidget {
  const PhoneCodeEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 37,
          ),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  scale: 1.2,
                  fit: BoxFit.none,
                  opacity: 0.4,
                  image: AssetImage('assets/backgroundimagecart.png'),
                  alignment: Alignment.bottomLeft),
              //   backgroundBlendMode: BlendMode.multiply,
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [
                    Color(0xFF39A6FF),
                    Color(0xFF2A8BDA),
                    Color(0xFF1B6EB2),
                    Color(0xFF0D528C),
                    Color(0xFF003A6B)
                  ])),
          child: Column(
            children: [
              const Spacer(),
              const Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              const SizedBox.square(
                dimension: 25,
              ),
              const Center(
                child: Text(
                  'من فضلك ادخل رسالة التأكيد',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.close,),
                        onPressed: () {},
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton(
                    onPressed: () {},
                    child: const Text('اعادة ارسال الرمز',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600))),
              ),
              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 35),
               
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                      (_) => false);
                },
                childWidget: const Text('استمرار'),
              ),
              const Spacer(
                flex: 3,
              ),
              CustomButton(
                decoration: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white))),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserLoginScreen()),
                      (_) => false);
                },
                childWidget: const Text('انا لدي حساب بالفعل'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.error_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Lorem ipsum',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
