import 'package:flutter/material.dart';
import 'package:jobasee/homePage/homepage3.dart';
import 'package:jobasee/theme/theme.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

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
                    'assets/images/images2.png',
                    width: 344,
                    height: 238,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Collaborative Projects',
                  style: titleText,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'Create a great team for smooth work and strong friendships',
                    style: subTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/animated2.png',
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
                      Text('Skip'),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage3()));
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
