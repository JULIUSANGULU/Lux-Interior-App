import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class VerifyEmailaddress extends StatefulWidget {
  const VerifyEmailaddress({super.key});

  @override
  State<VerifyEmailaddress> createState() => _VerifyEmailaddressState();
}

class _VerifyEmailaddressState extends State<VerifyEmailaddress> {
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  final List<TextEditingController> _textControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final bool _obscureText = true;
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
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Text(
              "Verify Email Address",
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
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
              width: 361,
              height: 53,
              child: Text(
                'A 4-digit code has been sent to your email address ',
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
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 4; i++)
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TextFormField(
                      controller: _textControllers[i],
                      focusNode: _focusNodes[i],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: null,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF4B7F8B)),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          if (i < 3) {
                            FocusScope.of(context)
                                .requestFocus(_focusNodes[i + 1]);
                          }
                        }
                      },
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                child: Text(
                  'Resend code in',
                  style: TextStyle(
                    color: Color(0xFF828383),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgotpassword');
                },
                child: const Text(
                  "Now",
                  style: TextStyle(
                      color: Color(0xFF419593),
                      fontWeight: FontWeight.bold,
                      decorationColor: Color(0xFF1E5F6E)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
