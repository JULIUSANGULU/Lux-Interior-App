import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
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
                                height: 30,
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
                          right: 0,
                          bottom: 0,
                          child: SvgPicture.asset(
                            'assets/images/chair.png',
                            fit: BoxFit.contain,
                          ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: Container(
                                        width: 166,
                                        height: 108,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Image.asset(
                                            'assets/images/classicsofa.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Add your like functionality here
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: const BoxDecoration(
                                          color: Color(0XFFB9CDD2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB9CDD2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Text(
                                      '₦95,000',
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
                                padding:
                                    const EdgeInsets.fromLTRB(145, 0, 0, 0),
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
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/images/cartoutline2.svg',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: Container(
                                        width: 166,
                                        height: 108,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Image.asset(
                                            'assets/images/swingchair.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Add your like functionality here
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: const BoxDecoration(
                                          color: Color(0XFFB9CDD2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB9CDD2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                                    child: Text(
                                      'Swing Chair',
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
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Text(
                                      '₦70,000',
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
                                padding:
                                    const EdgeInsets.fromLTRB(145, 0, 0, 0),
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
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/images/cartoutline2.svg',
                                    ),
                                  ),
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
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 82,
        child: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // This ensures all items are always visible
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: const Color(0xFF1E5F6E),
          unselectedItemColor: const Color(0xFF464747),
          items: [
            _buildBottomNavItem(Icons.home, 'Home'),
            _buildBottomNavItem(Icons.category, 'Category'),
            _buildBottomNavItem(Icons.shopping_cart, 'My order'),
            _buildBottomNavItem(Icons.favorite, 'Favourite'),
            _buildBottomNavItem(Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
