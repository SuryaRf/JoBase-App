import 'package:flutter/material.dart';
import 'package:jobasee/loginPage/loginPage.dart';
import 'package:jobasee/theme/theme.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Create an Account',
                    style: titleText,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Happy to see you here! lets follow the steps',
                    style: subTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 344,
                  height: 52,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/images/profile.png'),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter full name',
                            hintStyle: hinttStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 11),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 344,
                  height: 52,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/images/sms.png'),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            hintStyle: hinttStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 11),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 344,
                  height: 52,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/images/call.png'),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                            hintStyle: hinttStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 11),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 344,
                  height: 52,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/images/lock.png'),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter password',
                            hintStyle: hinttStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 11),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 344,
                  height: 52,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/images/lock.png'),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm password',
                            hintStyle: hinttStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 11),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'By sign up youre agree to our Terms & Conditions and Privacy Policy',
                    style: anounStyle,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: colorBtn,
                    ),
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account ? ', style: anounStyle,),
                      InkWell(
                        onTap: (){},
                        child: Text('Sign In', style: signStyle,),
                      ),
                    ],
                  ),
                )

                // SizedBox(
                //   width: 312,
                //   height: 200,
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 20),
                //     child: Text.rich(
                //       TextSpan(
                //         children: [
                //           TextSpan(
                //             text: 'By sign up youre agree to our ',
                //             style: TextStyle(
                //               color: Colors.black,
                //               fontSize: 12,
                //               fontFamily: 'Poppins',
                //               fontWeight: FontWeight.w400,
                //               height: 0.15,
                //               letterSpacing: -0.41,
                //             ),
                //           ),
                //           TextSpan(
                //             text: 'Terms & Conditions',
                //             style: TextStyle(
                //               color: Color(0xFF3580E9),
                //               fontSize: 12,
                //               fontFamily: 'Poppins',
                //               fontWeight: FontWeight.w500,
                //               height: 0.15,
                //               letterSpacing: -0.41,
                //             ),
                //           ),
                //           TextSpan(
                //             text: ' and ',
                //             style: TextStyle(
                //               color: Colors.black,
                //               fontSize: 12,
                //               fontFamily: 'Poppins',
                //               fontWeight: FontWeight.w400,
                //               height: 0.15,
                //               letterSpacing: -0.41,
                //             ),
                //           ),
                //           TextSpan(
                //             text: 'Privacy Policy',
                //             style: TextStyle(
                //               color: Color(0xFF3580E9),
                //               fontSize: 12,
                //               fontFamily: 'Poppins',
                //               fontWeight: FontWeight.w500,
                //               height: 0.15,
                //               letterSpacing: -0.41,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // )

                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 15),
                //   child: Row(
                //     children: [
                //       Text('By sign up youre agree to our '),
                //       InkWell(
                //         onTap: () {},
                //         child: Text(
                //           'Terms & Conditions',
                //           style: TextStyle(color: colorBtn),
                //         ),
                //       ),
                //       const SizedBox(width: 1,),
                //       Text('and '),
                //       InkWell(
                //         onTap: () {},
                //         child: Text(
                //           'Privacy Policy',
                //           style: TextStyle(color: colorBtn),
                //         ),
                //       ),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
