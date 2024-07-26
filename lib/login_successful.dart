import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSuccessful extends StatefulWidget {
  const LoginSuccessful({super.key});

  @override
  State<LoginSuccessful> createState() => _LoginSuccessfulState();
}

class _LoginSuccessfulState extends State<LoginSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 180, 0, 0),
            child: SvgPicture.asset("assets/images/successful.svg"),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Text(
              'Successfully Login',
              style: TextStyle(
                color: Color(0xFF2A2A2A),
                fontSize: 32,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0.04,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Text(
              'Congratulation you have successfully login',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF828383),
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          )
        ],
      ),
    );
  }
}
