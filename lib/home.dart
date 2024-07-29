import 'package:flutter/material.dart';
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
      body: Column(
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
                  padding:
                      const EdgeInsets.all(8.0), // Adjust padding as needed
                  child: SvgPicture.asset(
                    "assets/images/sliderfilter.svg", // Your search icon asset path
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Custom border radius
                  borderSide: BorderSide.none, // Remove the border
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0), // Adjust padding inside the text field
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
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
        ],
      ),
    );
  }
}
