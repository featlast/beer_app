import 'package:flutter/material.dart';

import '../components/components.dart';
import '../screens/screens.dart';

class BottomWelcome extends StatelessWidget {
  const BottomWelcome({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: size * .4,
      child: Container(
        // transform: Matrix4.translationValues(0, -50, 0),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // height: size * .4,
        width: double.infinity,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.yellow,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(5.0, 5.0))
            ],
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome...',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 40)),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'Hi, Devs,Flutter is an open-source UI (User Interface) software development toolkit created by Google. It is designed to build natively compiled applications for mobile, web, and desktop from a single codebase. Released in May 2017.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  text: "Sign In",
                  color: Colors.black,
                  textColor: Colors.white,
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const LoginScreen(),
                    //     )
                    Navigator.pushNamed(context, "/login");
                  },
                ),
                CustomButton(
                  text: "Sign Up",
                  color: Colors.white,
                  textColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
