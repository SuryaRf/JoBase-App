import 'package:flutter/material.dart';
import 'package:jobasee/homePage/homePage.dart';
import 'package:jobasee/signupPage/signupPage.dart';
import 'package:jobasee/theme/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
                width: 10,
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_circle_left_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    label: const Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset(
                  'assets/images/images6.png',
                  width: 350,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Find Your Dream Job Here',
                style: titleText,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: Text(
                  'The best way to predict the future is to create it',
                  textAlign: TextAlign.center,
                  style: subTitle,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: hinttStyle,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: colorBtnGrey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Forget Password',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: colorBtn,
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'or Sign In With',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 12),
                    child: Image.asset('assets/images/apple.png',
                        height: 37, width: 37),
                  ),
                  Image.asset('assets/images/facebook.png',
                      height: 37, width: 37),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have account ? ',
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: colorBtn),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
