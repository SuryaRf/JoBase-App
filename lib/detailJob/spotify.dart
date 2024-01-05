import 'package:flutter/material.dart';
import 'package:jobasee/theme/theme.dart';

class DetailSpotify extends StatefulWidget {
  const DetailSpotify({super.key});

  @override
  State<DetailSpotify> createState() => _DetailSpotifyState();
}

class _DetailSpotifyState extends State<DetailSpotify> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(8),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(1),
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
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
                      left: 30, top: 10, right: 10, bottom: 10),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      child: Icon(Icons.email_outlined),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(133, 36, 157, 255),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 120, top: 10, right: 10, bottom: 10),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      child: Center(
                        child: Text(
                          'Apply Job',
                          style: clipTextStyleHeadWhite,
                        ),
                      ),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: colorBtn,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_rounded,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            'Advertising',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              child: Icon(
                Icons.more_vert_outlined,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
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
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 3),
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
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 1,
                  width: 340,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Icon(Icons.timer_outlined),
                  ),
                  Text(
                    'Full Time',
                    style: clipTextStyleBody,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Image.asset(
                        'assets/images/teacher.png',
                        height: 23,
                        width: 23,
                      )),
                  Text(
                    'Sarjana/Diploma',
                    style: clipTextStyleBody,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Icon(Icons.work_outline_outlined),
                  ),
                  Text(
                    '0-1 Years Experience',
                    style: clipTextStyleBody,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Required Skills',
                  style: clipTextStyleHead,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 5),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text('UI/UX Designer',
                                style: clipTextStyleBodyWhite),
                          ),
                          width: 106,
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text('Layout Design',
                                style: clipTextStyleBodyWhite),
                          ),
                          width: 106,
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text('Brand Design',
                                style: clipTextStyleBodyWhite),
                          ),
                          width: 106,
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 5),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text('Design Thinking',
                                style: clipTextStyleBodyWhite),
                          ),
                          width: 106,
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text('Typography',
                                style: clipTextStyleBodyWhite),
                          ),
                          width: 106,
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text('Adobe Illustrator',
                                style: clipTextStyleBodyWhite),
                          ),
                          width: 106,
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Job Description',
                  style: clipTextStyleHead,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Spotify Advertising is a fast-growing team that is responsible for developing and selling innovative advertising solutions to businesses around the world. Job like account management, sales, marketing, product, and enginering. ',
                  style: clipTextStyleBody,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Company Overview',
                  style: clipTextStyleHead,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 344,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(133, 36, 157, 255),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 20,
                    bottom: 15,
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
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 30,
                    child: Text(
                      'Spotify',
                      style: subText,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 55,
                    child: Text(
                      '5.197 Employed',
                      style: clipTextStyleBody,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 75,
                    child: Text(
                      'Stockholm, Sweden',
                      style: subText,
                    ),
                  ),
                  Positioned(
                    left: 310,
                    top: 45,
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Related Job',
                  style: clipTextStyleHead,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 20),
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
                          'assets/images/spacex.png',
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
                              'Machine Learning',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SpaceX',
                              style: clipTextStyleBody,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'IDR 25.000.000',
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
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 3),
                              child: Text(
                                'Sidney',
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
                                '6 day ago',
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
              const SizedBox(height: 35),
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
                          'assets/images/Ea.png',
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
                              'Artificial Inteligence',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Electronic Art',
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
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 3),
                              child: Text(
                                'Los Angeles',
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
                                '5 day ago',
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
