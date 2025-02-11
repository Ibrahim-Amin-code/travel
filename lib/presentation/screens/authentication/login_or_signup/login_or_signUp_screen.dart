// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:travel/constants/constants.dart';
import 'package:travel/presentation/screens/authentication/login/login_screen.dart';
import 'package:travel/presentation/screens/authentication/sign_up/sign_up_screen.dart';
import 'package:travel/presentation/screens/layout/bottomNave.dart';

class LoginOrSignUpScreen extends StatelessWidget {
  const LoginOrSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: h * 0.035,
            ),
            Image.asset(
              'assets/images/Van.png',
              width: w * 0.3,
              height: h * 0.4,
              fit: BoxFit.contain,
            ),
            Text(
              'Plan your trip',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: w * 0.075,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff3A0CA3)),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Center(
              child: SizedBox(
                height: h * 0.07,
                width: w * 0.5,
                child: Text(
                  'Custom and fast planning with a low price',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: w * 0.038,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff3A0CA3)),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            defaultButton(
                margin: EdgeInsets.symmetric(horizontal: w * 0.2),
                textColor: Colors.white,
                title: 'LOG IN',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                fontSize: w * 0.04,
                height: h * 0.07,
                width: 260,
                color: const Color(0xff3A0CA3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5,
                    offset: const Offset(0, 5), // Shadow position
                  ),
                ]),
            SizedBox(
              height: h * 0.02,
            ),
            defaultButton(
                margin: EdgeInsets.symmetric(horizontal: w * 0.2),
                textColor: const Color(0xff3A0CA3),
                title: 'SIGN UP',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                fontSize: w * 0.04,
                height: h * 0.07,
                width: 260,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5,
                    offset: const Offset(0, 5), // Shadow position
                  ),
                ]),
            Padding(
              padding: EdgeInsets.only(right: w * 0.07, top: h * 0.045),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNave(
                              index: 0,
                            ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'SKIP',
                      style: TextStyle(
                          fontSize: w * 0.045,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Colors.grey),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
