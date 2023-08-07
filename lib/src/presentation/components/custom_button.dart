import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function()? onTap;
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 120,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60)))),
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600,
              fontSize: 15),
        ),
      ),
    );
  }
}
