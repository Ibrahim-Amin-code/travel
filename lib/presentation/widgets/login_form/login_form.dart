import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget textFormField({
  required TextEditingController? controller,
  required FormFieldValidator<String>? validator,
  required bool obscureText,
  required String hintText,
  Widget? suffixIcon,
}) =>
    TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.text,
      cursorColor: Colors.grey,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A0CA3))),
        disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A0CA3))),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A0CA3))),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A0CA3))),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 16, fontFamily: 'Poppins', color: Color(0xff3A0CA3)),
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A0CA3))),
      ),
    );

Widget googleAndFacebookRow({
  GestureTapCallback? pressOnGoogle,
  GestureTapCallback? pressOnFacebook,
  required context,
}) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InkWell(
        onTap: pressOnGoogle,
        child: Container(
          padding: EdgeInsets.only(left: w * 0.03, right: w * 0.04),
          height: h * 0.06,
          width: w * 0.34,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 5,
                offset: const Offset(0, 5), // Shadow position
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FontAwesomeIcons.google,
                color: Color(0xff3498DB),
                size: 20,
              ),
              // Spacer(),
              Text(
                ' oogle',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: Color(0xff3498DB),
                ),
              ),
            ],
          ),
        ),
      ),
      InkWell(
        onTap: pressOnFacebook,
        child: Container(
          padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
          height: h * 0.06,
          width: w * 0.34,
          decoration: BoxDecoration(
            color: const Color(0xff3498DB),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 5,
                offset: const Offset(0, 5), // Shadow position
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FontAwesomeIcons.facebookF,
                color: Colors.white,
              ),
              Text(
                'acebook',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
