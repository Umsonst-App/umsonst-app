import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umsoapp/components/onboard_button.dart';

class OnboardingStep2 extends StatelessWidget {
  final VoidCallback carouselNextHandler;

  const OnboardingStep2({Key? key, required this.carouselNextHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(
                  height: 200,
                  width: 275,
                  color: Colors.transparent,
                  child: SvgPicture.asset(
                    'assets/images/onboarding/step2.svg',
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                'Biete',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Kalam',
                  height: 1,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF918A),
                ),
              ),
            ),
            const Text(
              'Hast du etwas über? Und gibt es etwas, dass du teilen möchtest?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6A6A6A),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: OnboardButton(
                onPressed: carouselNextHandler,
                child: const Text(
                  'Jetzt anbieten',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
