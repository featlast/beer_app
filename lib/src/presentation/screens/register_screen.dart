import 'package:beer_app/src/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BeerAppColors.colorPrimary,
        elevation: 0,
      ),
      backgroundColor: BeerAppColors.colorPrimary,
      body: Center(child: Text('Register Screen')),
    );
  }
}
