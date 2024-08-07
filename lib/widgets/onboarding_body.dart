import 'package:flutter/material.dart';
import 'package:notly/views/home_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Image.asset('assets/images/Wall Polygon.png'),
            Positioned(
              top: 80,
              right: 80,
              child: Image.asset(
                'assets/images/onBoarding.png',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Create free notes & collaborate',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        const Text(
          'with your team',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15,),
        const Center(
          child: Text(
            'Start organizing your life and unleashing ',
          ),
        ),
        const Text('your creativity with Notly App'),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: const Color(0xffFF8383),
              minimumSize: const Size(90, 50),
                
            ),
           onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const HomeView();
            }));
           },
           child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Get Started',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              Icon(Icons.arrow_right_alt_sharp,color: Colors.white,)
            ],
           )),
        )
      ],
    );
  }
}
