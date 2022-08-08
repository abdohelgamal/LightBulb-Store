import 'package:flutter/material.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Components/Textfield.dart';
import 'package:store_app/Screens/PhoneCodeEntry.dart';
import 'package:store_app/Screens/UserLogin.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 37),
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
                  'تأكيد رقم الهاتف',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                //TODO: customize this textfield more
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: 'رقم الهاتف',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {},
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              const CustomTextfield('البريد الالكتروني : اختياري'),
              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 35),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhoneCodeEntry()));
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
