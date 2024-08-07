import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: ShapeDecoration(
              color: const Color(0xFFB9CDD2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: (IconButton(
              icon: SvgPicture.asset("assets/images/chevronarrow2.svg"),
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding1');
              },
            )),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/img4.svg"),
                        const SizedBox(height: 20),
                        const Text(
                          'Set Location',
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
                          'Best location for fast delivery',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF828383),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w300,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 49),
                        SizedBox(
                          width: 372,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1E5F6E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Allow Location',
                              style: TextStyle(
                                color: Color(0xFFE9EFF1),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 1.2, // Adjust height
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
