import 'package:flutter/material.dart';
import 'package:notly/views/home_view.dart';
import 'package:notly/widgets/get_started_button.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Image.asset(
              'assets/images/Wall Polygon.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: 400,
            ),
            Positioned(
              top: 140,
              right: 90,
              child: Image.asset(
                'assets/images/onBoarding.png',
                fit: BoxFit.fill,
                height: 270,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Create free notes & collaborate with your team',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Start organizing your life and unleashing\n your creativity with Notly App',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: GetStartedButton(),
        ),
      ],
    );
  }
}
