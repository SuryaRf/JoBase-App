import 'package:flutter/material.dart';
import 'package:jobasee/detailJob/spotify.dart';
import 'package:jobasee/navigationBar/navigationBar.dart';
import 'package:jobasee/theme/theme.dart';

class SearchJob extends StatefulWidget {
  const SearchJob({super.key});

  @override
  State<SearchJob> createState() => _SearchJobState();
}

class _SearchJobState extends State<SearchJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 320,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Search job or project',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color.fromARGB(85, 158, 158, 158),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 10,
                          offset: Offset(0, 3),
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Icon(Icons.format_list_bulleted_rounded),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text('UI/UX Designer',
                                      style: clipTextStyleBodyWhite),
                                ),
                                width: 106,
                                height: 22,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: ShapeDecoration(
                                  color: colorBtn,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text('Full Time',
                                      style: clipTextStyleBodyWhite),
                                ),
                                width: 106,
                                height: 22,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: ShapeDecoration(
                                  color: colorBtn,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text('0-1 Years',
                                      style: clipTextStyleBodyWhite),
                                ),
                                width: 106,
                                height: 22,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: ShapeDecoration(
                                  color: colorBtn,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text('5.000.000 - 6.000.000',
                                      style: clipTextStyleBodyWhite),
                                ),
                                width: 156,
                                height: 22,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: ShapeDecoration(
                                  color: colorBtn,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: 344,
                        height: 156,
                        padding: const EdgeInsets.only(
                          top: 17,
                          left: 20,
                          right: 19,
                          bottom: 17,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x1E000000),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 30,
                      bottom: 50,
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: colorBtnGrey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/apple.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 170,
                      top: 30,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Software Enginering',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Apple.inc',
                              style: clipTextStyleBody,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'IDR 17.000.000',
                              style: clipTextStyleHead,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 26,
                      top: 130,
                      child: Container(
                        width: 340,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF3580E9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(26),
                            bottomRight: Radius.circular(26),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 3),
                              child: Text(
                                'Los Altos',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 3),
                              child: Text(
                                '23 minutes ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: 344,
                        height: 156,
                        padding: const EdgeInsets.only(
                          top: 17,
                          left: 20,
                          right: 19,
                          bottom: 17,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x1E000000),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 30,
                      bottom: 50,
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: colorBtnGrey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/A.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 170,
                      top: 30,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Software Manager',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Adobe',
                              style: clipTextStyleBody,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'IDR 20.000.000',
                              style: clipTextStyleHead,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 26,
                      top: 130,
                      child: Container(
                        width: 340,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF3580E9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(26),
                            bottomRight: Radius.circular(26),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 3),
                              child: Text(
                                'San Jose',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 3),
                              child: Text(
                                '45 Minutes ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: 344,
                        height: 156,
                        padding: const EdgeInsets.only(
                          top: 17,
                          left: 20,
                          right: 19,
                          bottom: 17,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x1E000000),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 30,
                      bottom: 50,
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: colorBtnGrey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/Netflix.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 170,
                      top: 30,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Design System',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Netflix',
                              style: clipTextStyleBody,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'IDR 9.000.000',
                              style: clipTextStyleHead,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 26,
                      top: 130,
                      child: Container(
                        width: 340,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF3580E9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(26),
                            bottomRight: Radius.circular(26),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 3),
                              child: Text(
                                'California',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 3),
                              child: Text(
                                '50 Minutes ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailSpotify()));
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: 344,
                        height: 156,
                        padding: const EdgeInsets.only(
                          top: 17,
                          left: 20,
                          right: 19,
                          bottom: 17,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x1E000000),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 30,
                      bottom: 50,
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: colorBtnGrey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/spoti.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 170,
                      top: 30,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Advertising',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Spotify',
                              style: clipTextStyleBody,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'IDR 11.700.000',
                              style: clipTextStyleHead,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 26,
                      top: 130,
                      child: Container(
                        width: 340,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF3580E9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(26),
                            bottomRight: Radius.circular(26),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 3),
                              child: Text(
                                'San Jose',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 3),
                              child: Text(
                                '1 day ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
