import 'package:flutter/material.dart';
import 'package:jobasee/loginPage/loginPage.dart';
import 'package:jobasee/theme/theme.dart';

class FindPage extends StatelessWidget {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 43, right: 43),
              child: Image.asset(
                'assets/images/images5.png',
                width: 344,
                height: 238,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                'You are looking for Job or Employee',
                style: titleText,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/images/animated5.png',
              width: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Container(
                width: 280,
                height: 50,
                decoration: BoxDecoration(
                  color: colorBtn,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text(
                    'Find Jobs',
                    style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 280,
              height: 50,
              decoration: BoxDecoration(
                color: colorBtnGrey,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Center(
                child: Text(
                  'Find Employee',
                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
