import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF0F0),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/carbonlocation.svg',
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Abuja, Nigeria',
                  style: TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/reminder.svg'),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset('assets/images/cartoutline.svg'),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFd9d9d9), // Custom fill color
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Color(0xFF828383),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                  prefixIcon: Padding(
                    padding:
                        const EdgeInsets.all(8.0), // Adjust padding as needed
                    child: SvgPicture.asset(
                      "assets/images/searchicon.svg", // Your search icon asset path
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/sliderfilter.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 40, 0, 0),
              child: Text(
                "Special Offers",
                style: TextStyle(
                  color: Color(0xFF2A2A2A),
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    width: 320,
                    height: 168,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1E5F6E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '30%',
                                style: TextStyle(
                                  color: Color(0xFFE9EFF1),
                                  fontSize: 25,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  height: 0.06,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Special Discount',
                                style: TextStyle(
                                  color: Color(0xFFE9EFF1),
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  height: 0.09,
                                ),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              SizedBox(
                                width: 160,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/newpassword');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF1E5F6E),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFE9EFF1)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Shop Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/arrowback.svg',
                                        fit: BoxFit.fill,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -20,
                          bottom: -20,
                          child: ClipRect(
                              child: SvgPicture.asset(
                            'assets/images/chair.svg',
                            fit: BoxFit.cover,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      color: Color(0xFF2A2A2A),
                      fontSize: 25,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                    ),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Color(0xFF1E5F6E),
                        fontSize: 19.6,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF1E5F6E),
                        height: 0.10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 77.21,
                        height: 80,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(),
                        ),
                        child: Image.asset('assets/images/Ellipse1.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Table',
                        style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 77.21,
                        height: 80,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(),
                        ),
                        child: Image.asset('assets/images/Ellipse2.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Sofa',
                        style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 77.21,
                        height: 80,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(),
                        ),
                        child: Image.asset('assets/images/Ellipse3.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Chair',
                        style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 77.21,
                        height: 80,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(),
                        ),
                        child: Image.asset('assets/images/Ellipse4.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Light',
                        style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Text(
                    'Recommendations',
                    style: TextStyle(
                      color: Color(0xFF2A2A2A),
                      fontSize: 25,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 182,
                    height: 219,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE9EFF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 166,
                          height: 108,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.asset('assets/images/classicsofa.png'),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Text(
                                'Classic Sofa',
                                style: TextStyle(
                                  color: Color(0xFF1B5664),
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Text(
                                'Lorem ipsum',
                                style: TextStyle(
                                  color: Color(0xFF4B7F8B),
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  height: 0.10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Text(
                                'N95,000',
                                style: TextStyle(
                                  color: Color(0xFF1B5664),
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1E5F6E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: SvgPicture.asset(
                                'assets/image/cartoutline2.svg'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
