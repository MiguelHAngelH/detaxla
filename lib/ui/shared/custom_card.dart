import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final title;
  final subtitle;
  final IconData icon;
  const CustomCard({Key? key, required this.title, required this.subtitle, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:30),
          height: 300.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 0),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                spreadRadius: -4,
                blurRadius: 31,
                offset: Offset(0, 8),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                spreadRadius: 0,
                blurRadius: 31,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.black.withOpacity(1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.black.withOpacity(1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: .0,
          left: .0,
          right: .0,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.06),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 0),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.06),
                  spreadRadius: -4,
                  blurRadius: 31,
                  offset: Offset(0, 8),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.06),
                  spreadRadius: 0,
                  blurRadius: 31,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
