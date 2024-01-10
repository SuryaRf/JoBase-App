import 'package:flutter/material.dart';
import 'package:jobasee/homePage/ChoosePage.dart';
import 'package:jobasee/homePage/homepage.dart';
import 'package:jobasee/theme/theme.dart';

class SuccesPage extends StatefulWidget {
  const SuccesPage({super.key});

  @override
  State<SuccesPage> createState() => _SuccesPageState();
}

class _SuccesPageState extends State<SuccesPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(8),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(1),
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, top: 10, right: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosePage()));
                    },
                    child: Container(
                      child: Center(child: Text('Back to Home', style:  subText.copyWith(color: Colors.white),)),
                      height: 55,
                      width: 355,
                      decoration: BoxDecoration(
                        color: colorBtn,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 40, right: 40),
              child: Image.asset(
                'assets/images/deal.png',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Apply Successfully ',
              style: titleText.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Send the project in DM and company will complete payment ',
                style: subTitle,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
