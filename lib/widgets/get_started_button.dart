import 'package:flutter/material.dart';
import 'package:notly/constants.dart';
import 'package:notly/views/home_view.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: kPrimaryColor,
        minimumSize: const Size(90, 50),
      ),
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeView()));
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.arrow_right_alt_sharp,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}