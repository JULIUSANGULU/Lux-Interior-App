import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({super.key});

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  int? _selectedValue = 1;
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
                Navigator.pushNamed(context, '/home');
              },
            )),
          ),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset('assets/images/cartoutline.svg'),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              })
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
                suffixIcon: GestureDetector(
                  onTap: () {
                    // Navigate to the new page
                    Navigator.pushNamed(context, '/filtersearch');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/sliderfilter.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Title(title: 'Tables'),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      width: 387,
                      height: 130,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEFF0F0),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFCFCFCF)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 182,
                            height: 130,
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/182x130"),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Side Table',
                                        style: TextStyle(
                                          color: Color(0xFF1B5664),
                                          fontSize: 14,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                          height: 0.10,
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF4B7F8B),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                        height: 0.10,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'N180,000',
                                      style: TextStyle(
                                        color: Color(0xFF1B5664),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        height: 0.10,
                                      ),
                                    ),
                                  ],
                                ),
                                // Radio<int>(
                                //   value: 1,
                                //   groupValue: _selectedValue,
                                //   onChanged: (int? value) {
                                //     setState(() {
                                //       _selectedValue = value;
                                //     });
                                //   },
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//beginning title class//
class Title extends StatelessWidget {
  final String title;
  const Title({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF2A2A2A),
        fontSize: 25,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
        height: 0.06,
      ),
    );
  }
}
//end of title class//
