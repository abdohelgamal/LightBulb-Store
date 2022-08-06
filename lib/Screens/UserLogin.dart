import 'package:flutter/material.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Components/Textfield.dart';
import 'package:store_app/Screens/Home.dart';
import 'package:store_app/Components/SocialMediaButton.dart';
import 'package:store_app/Screens/UserSignup.dart';

class UserLoginScreen extends StatelessWidget {
  const UserLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: true,
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
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox.square(
                dimension: MediaQuery.of(context).size.height * 0.1,
              ),
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
                  'تسجيل الدخول',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const CustomTextfield('اسم المستخدم'),
              const CustomTextfield('كلمة المرور'),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                    onPressed: () {},
                    child: const Text('هل نسيت كلمة السر ؟',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600))),
              ),
              CustomButton(padding: const EdgeInsets.symmetric(vertical: 35),
              
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                      (_) => false);
                },
                childWidget: const Text('تسجيل الدخول'),
              ),
              SocialMediaButton(
                  text: 'استمر بواسطة فيس بوك', svgPath: 'assets/facebook.svg'),
              SocialMediaButton(
                  text: 'استمر بواسطة جيميل', svgPath: 'assets/google.svg'),
              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 35),
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
                          builder: (context) => const UserSignupScreen()),
                      (_) => false);
                },
                childWidget: const Text('انشاء حساب'),
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
