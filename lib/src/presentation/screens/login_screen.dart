import 'package:beer_app/src/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BeerAppColors.colorSecundary,
      appBar: AppBar(
        backgroundColor: BeerAppColors.colorSecundary,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, "/welcome");
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: BeerAppColors.colorBlack,
              size: 30,
            )),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/register");
            },
            style:
                TextButton.styleFrom(foregroundColor: BeerAppColors.colorBlack),
            child: const Text(
              'Register',
            ),
          )
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign In',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Nisi nulla eiusmod officia elit deserunt laborum occaecat sint qui esse.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
