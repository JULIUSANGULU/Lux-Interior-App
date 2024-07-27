import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SvgPicture.asset("assets/images/forgotpassword.svg"),
            const Text(
              "Forgot Password",
              style: TextStyle(
                color: Color(0xFF2A2A2A),
                fontSize: 25,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0.06,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                width: 361,
                height: 53,
                child: Text(
                  'Please enter your Email address to receive a Verification code',
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
              padding: const EdgeInsets.only(
                top: 13,
                left: 24,
                right: 24,
                bottom: 13,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                    color: Color(0xFF636464),
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
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
              height: 20,
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginsuccessful');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E5F6E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Confirm Email',
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
