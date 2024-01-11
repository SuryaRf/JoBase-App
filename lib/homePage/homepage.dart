import 'package:flutter/material.dart';
import 'package:jobasee/searchPage/searchJobPage.dart';
import 'package:jobasee/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 203,
                      child: Text(
                        'Find you perfect Jobs here',
                        style: titleText,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: colorNotif,
                            border: Border.all(),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/notification.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: colorNotif,
                            border: Border.all(),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/sms.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchJob()));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  'Ongoing Project',
                  style: subText,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
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
                          color: colorClip,
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
                  ),
                  Positioned(
                    left: 50,
                    top: 120,
                    child: Container(
                      width: 256,
                      height: 6,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 192,
                              height: 6,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 320,
                    top: 114,
                    child: Text(
                      '78%',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
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
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/product.png',
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
                            'Product Manager',
                            style: clipTextStyleHeadWhite,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Microsoft',
                            style: clipTextStyleBodyWhite,
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'IDR 13.500.000',
                            style: clipTextStyleHeadWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  'Featured Jobs & Project',
                  style: subText,
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
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: colorBtnGrey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/Spotify.png',
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
                              'Data Scientist',
                              style: clipTextStyleHead,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Meta',
                              style: clipTextStyleBody,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'IDR 14.000.000',
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
                              padding: const EdgeInsets.only(
                                  left: 10, bottom: 3),
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
                              padding: const EdgeInsets.only(
                                  right: 10, bottom: 3),
                              child: Text(
                                '3 days ago',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Course',
                      style: subText,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
                      height: 156,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(133, 36, 157, 255),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 15,
                    child: Row(
                      children: [
                        Icon(Icons.menu_book_outlined),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Flutter Beginner',
                          style: subText,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    top: 50,
                    left: -5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        'Build, test, and deploy beautiful mobile, web,\ndesktop, and embedded apps from a single codebase.',
                        textAlign: TextAlign.justify,
                        style: clipTextStyleBody,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    left: 43,
                    top: 110,
                    child: Text(
                      'IDR 250.000',
                      style: clipTextStyleHead,
                    ),
                  ),
                ],
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
                      height: 156,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(133, 36, 157, 255),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 15,
                    child: Row(
                      children: [
                        Icon(Icons.menu_book_outlined),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Python Intermediate',
                          style: subText,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    top: 50,
                    left: -5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        'Build, test, and secure your application\ndesktop, and embedded apps from a single codebase.',
                        textAlign: TextAlign.justify,
                        style: clipTextStyleBody,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    left: 43,
                    top: 110,
                    child: Text(
                      'IDR 350.000',
                      style: clipTextStyleHead,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  'Webinar',
                  style: subText,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(right: 5, left: 0),
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10, left: 20),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 90, top: 20),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'Become a Good Copywriter',
                                      style: subText,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '21/12/2023  08:30',
                                          style: clipTextStyleBody,
                                        ),
                                        Icon(Icons.bookmark_add_outlined)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'FREE',
                                      style: subText,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 130,
                            width: 350,
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
                                  spreadRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 45,
                          top: 20,
                          child: Container(
                            height: 90,
                            width: 90,
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
                            child:
                                Image.asset('assets/images/copyWriter.png'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10, left: 20),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 90, top: 20),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'Become a Good Copywriter',
                                      style: subText,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '21/12/2023  08:30',
                                          style: clipTextStyleBody,
                                        ),
                                        Icon(Icons.bookmark_add_outlined)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'FREE',
                                      style: subText,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 130,
                            width: 350,
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
                                  spreadRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 45,
                          top: 20,
                          child: Container(
                            height: 90,
                            width: 90,
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
                            child: Image.asset(
                                'assets/images/dataAnalyst.png'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10, left: 20),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 90, top: 20),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'Become a Good Copywriter',
                                      style: subText,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '21/12/2023  08:30',
                                          style: clipTextStyleBody,
                                        ),
                                        Icon(Icons.bookmark_add_outlined)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'FREE',
                                      style: subText,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 130,
                            width: 350,
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
                                  spreadRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 45,
                          top: 20,
                          child: Container(
                            height: 90,
                            width: 90,
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
                            child:
                                Image.asset('assets/images/copyWriter.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Blog',
                      style: subText,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 20),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Make It Good, Not Raw',
                                style: subText,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, right: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.person_outline_sharp),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Alex santois',
                                    style: clipTextStyleBody,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      height: 130,
                      width: 350,
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
                            spreadRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 45,
                    top: 20,
                    child: Container(
                      height: 90,
                      width: 90,
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
                      child: Image.asset('assets/images/Blog1.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 20),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Scientist Data Should Know',
                                style: subText,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, right: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.person_outline_sharp),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Rere ruhian',
                                    style: clipTextStyleBody,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      height: 130,
                      width: 350,
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
                            spreadRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 45,
                    top: 20,
                    child: Container(
                      height: 90,
                      width: 90,
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
                      child: Image.asset('assets/images/Blog2.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}