import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterSearch extends StatefulWidget {
  const FilterSearch({super.key});

  @override
  State<FilterSearch> createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  double rating = 20;
  final double _min = 0;
  final double _max = 100;

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: SizedBox(
                    child: Text(
                  'Filter by',
                  style: TextStyle(
                    color: Color(0xFF1E5F6E),
                    fontSize: 25,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(title: "Category"),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CategoriesSelection(label: 'Table'),
                        CategoriesSelection(label: 'Sofa'),
                        CategoriesSelection(label: 'Lamps'),
                        CategoriesSelection(label: 'Bed'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CategoriesSelectionlong(label: 'Flower vase'),
                      CategoriesSelectionlong(label: 'Dinning set'),
                      CategoriesSelectionlong(label: 'Office Table'),
                    ],
                  ),
                  Row(
                    children: [
                      CategoriesSelectionlong(label: 'Kitchen'),
                      CategoriesSelectionlong(label: 'Others'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(title: "Style"),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CategoriesSelection(label: 'Modern'),
                        CategoriesSelection(label: 'Minimal'),
                        CategoriesSelection(label: 'Vintage'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CategoriesSelectionlong(label: 'Traditional'),
                      CategoriesSelection(label: 'Others'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Title(title: 'Price Range'),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Slider(
                          value: rating,
                          min: _min,
                          max: _max,
                          label: rating.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              rating = value;
                            });
                          },
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Text(
                                _min.round().toString(),
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Text(
                                _max.round().toString(),
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Current value display

                  const SizedBox(
                    height: 40,
                  ),

                  const Title(title: 'Colors'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF0C2A5F),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF1E5F6E),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFE6A523),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF969696),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFB34751),
                            shape: OvalBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Title(title: 'Rating'),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingCard(rateIcon: Icons.star, rate: 2.0),
                          SizedBox(
                            width: 15,
                          ),
                          RatingCard(rateIcon: Icons.star, rate: 3.2),
                          SizedBox(
                            width: 15,
                          ),
                          RatingCard(rateIcon: Icons.star, rate: 4.9),
                          SizedBox(
                            width: 15,
                          ),
                          RatingCard(rateIcon: Icons.star, rate: 5.0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                //padding: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/newpassword');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E5F6E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize:
                        const Size(double.infinity, 50), // Set a minimum height
                  ),
                  child: const Text(
                    'Search',
                    style: TextStyle(
                      color: Color(0xFFE9EFF1),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//beginning of category selection implementation//
class CategoriesSelection extends StatelessWidget {
  final String label;
  const CategoriesSelection({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        width: 59,
        height: 36,
        decoration: ShapeDecoration(
          color: const Color(0xFFB9CDD2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFF1E5F6E),
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              height: 0.10,
            ),
          ),
        ),
      ),
    );
  }
}
//end of category selection implementation//

//beginning of long category selection implementation//
class CategoriesSelectionlong extends StatelessWidget {
  final String label;
  const CategoriesSelectionlong({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        width: 87,
        height: 36,
        decoration: ShapeDecoration(
          color: const Color(0xFFB9CDD2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFF1E5F6E),
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              height: 0.10,
            ),
          ),
        ),
      ),
    );
  }
}
//end of long category selection implementation//

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

//beginning title class//
class RatingCard extends StatelessWidget {
  final IconData rateIcon;
  final double rate;
  const RatingCard({super.key, required this.rateIcon, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      height: 23,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            rateIcon,
            size: 16,
            color: Colors.amber,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            rate.toStringAsFixed(1),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              height: 0.10,
            ),
          ),
        ],
      ),
    );
  }
}
//end of rating card class//
