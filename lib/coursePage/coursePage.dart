import 'package:flutter/material.dart';
import 'package:jobasee/coursePage/courseModels/course.dart';
import 'package:jobasee/homePage/ChoosePage.dart';
import 'package:jobasee/theme/theme.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'Skills Upgraded Future Secured',
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
                            color: Colors.white,
                            border: Border.all(),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/search.png',
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
                            color: Colors.white,
                            border: Border.all(),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/bookmark.png',
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
                height: 20,
              ),
              SizedBox(
                height: 150,
                width: 780,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                        height: 80,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorCourse,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.menu_book_outlined),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  courses[index].title,
                                  style: subText,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              courses[index].description,
                              style: clipTextStyleBody,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              courses[index].harga,
                              style: clipTextStyleHead,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: courses.length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Text(
                  'My Course & Webinar',
                  style: subText,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  height: 150,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/cource.png',
                    fit: BoxFit.cover,
                  ),
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
                      'Categories',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/office.png',
                      height: 85,
                      width: 75,
                    ),
                    Image.asset(
                      'assets/images/finance.png',
                      height: 85,
                      width: 75,
                    ),
                    Image.asset(
                      'assets/images/design.png',
                      height: 85,
                      width: 75,
                    ),
                    Image.asset(
                      'assets/images/coding.png',
                      height: 85,
                      width: 75,
                    ),
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
                      'Webinar',
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
              const SizedBox(height: 20,),
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
                                'Become a Good Copywriter',
                                style: subText,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 10),
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
                              padding: const EdgeInsets.only(left: 40),
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
                      child: Image.asset('assets/images/copyWriter.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
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
                                'Become a Good Copywriter',
                                style: subText,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 10),
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
                              padding: const EdgeInsets.only(left: 40),
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
                      child: Image.asset('assets/images/copyWriter.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
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
                                'Become a Good Copywriter',
                                style: subText,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 10),
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
                              padding: const EdgeInsets.only(left: 40),
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
                      child: Image.asset('assets/images/copyWriter.png'),
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
