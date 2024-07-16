import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
              itemCount: 5,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/img2.svg"),
                    
                      const Text(
                        'High Quality Products',
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
                        'As we evolve our homes should too',
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
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 200),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const WormEffect(
                dotColor: Color(0xFFFFFFFF),
                activeDotColor: Color(0xFF1E5F6E),
                dotHeight: 11,
                dotWidth: 11,
              ),
            ),
          ),
          // Page Indicator Ends Here//
        ],
      ),
    );
  }
}
