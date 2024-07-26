import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final PageController _pageController = PageController();
  final int _numPages = 3;
  bool _isNavigating = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

 void _onPageChanged(int page) {
    if (page == _numPages +1 && !_isNavigating) {
      _isNavigating = true;
      Future.delayed(const Duration(milliseconds: 300), () {
        Navigator.pushNamed(context, '/onboarding3');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F0),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _numPages,
              onPageChanged: _onPageChanged,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/img2.svg"),
                    
                      const Text(
                        'Get Offers Every Week',
                        style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontSize: 25,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Explore, create and decorate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF828383),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w300,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //Page Indicator Begins Here//
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _numPages,
              effect: const WormEffect(
                dotColor: Color(0xFFFFFFFF),
                activeDotColor: Color(0xFF1E5F6E),
                dotHeight: 11,
                dotWidth: 11,
              ),
            ),
          ),
          // Page Indicator Ends Here//

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Skip",
                style: TextStyle(
                color: Color(0xFF1E5F6E),
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0.09,)),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/onboarding4');
                },
                 style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E5F6E),
                  shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                 ),
                 child: SvgPicture.asset("assets/images/chevronarrow.svg")
                 ),
              ],
            ),
          )
        ],
      )
    );
  }
}
