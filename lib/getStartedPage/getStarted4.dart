import 'package:flutter/material.dart';
import 'package:jobasee/homePage/homePage.dart';
import 'package:jobasee/loginPage/loginPage.dart';
import 'package:jobasee/theme/theme.dart';

class GetStarted4 extends StatelessWidget {
  const GetStarted4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 43, right: 43),
                  child: Image.asset(
                    'assets/images/images4.png',
                    width: 344,
                    height: 238,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Interview practice with AI ',
                  style: titleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'You can practice interview with a virtual assistant (AI)',
                    style: subTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/animated4.png',
                  width: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Skip'),
                      InkWell(
                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                        },
                        child: Container(
                          width: 80,
                          height: 45,
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colorBtn,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
