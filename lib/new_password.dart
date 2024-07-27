import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureText = true;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
              child: Text(
                "New Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  height: 0.06,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                width: 361,
                height: 53,
                child: Text(
                  'Your new password must be different from the previously used password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF828383),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 13, 23, 13),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'New Password',
                  hintStyle: const TextStyle(
                    color: Color(0xFF636464),
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      _obscureText
                          ? "assets/images/eyeoff.svg"
                          : "assets/images/eyeoff.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFB7B8B8)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 13, 23, 13),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                    color: Color(0xFF636464),
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      _obscureText
                          ? "assets/images/eyeoff.svg"
                          : "assets/images/eyeoff.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFB7B8B8)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/newpassword');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E5F6E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Confirm Password',
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
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
