import 'package:beer_app/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:rive/rive.dart';

class AnimationWidgetWelcome extends StatelessWidget {
  const AnimationWidgetWelcome({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('contenedor beers'),
      child: Positioned(
        top: 0,
        left: 0,
        right: 0,
        height: size * .7,
        child: Container(
          // height: size * .6,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: BeerAppColors.colorPrimary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(-50),
                  bottomRight: Radius.circular(-50))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    // RiveAnimation.asset(
                    //   'assets/animations/eye.riv',
                    //   fit:BoxFit.contain ,
                    // )
                    Lottie.asset('assets/animations/beers1.json',
                        fit: BoxFit.contain
                        // width: MediaQuery.of(context).size.width * 0.7,
                        // height: MediaQuery.of(context).size.width * 0.7,
                        ),
              ),
              const Text(
                "Cheerss!!!",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: BeerAppColors.colorWhite,
                    fontFamily: 'OpenSans'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
