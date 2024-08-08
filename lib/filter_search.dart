import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterSearch extends StatefulWidget {
  const FilterSearch({super.key});

  @override
  State<FilterSearch> createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
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
                Navigator.pushNamed(context, '/signup');
              },
            )),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              autofocus: true,
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
        ],
      ),
    );
  }
}
