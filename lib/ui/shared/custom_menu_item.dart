import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_fades.dart';

class CustomMenuItem extends StatefulWidget {
  final String text;
  final Function onPressed;
  final int delay;

  const CustomMenuItem({Key? key, required this.text, required this.onPressed, this.delay = 0}) : super(key: key);

  @override
  _CustomMenuItemState createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 10,
      duration: Duration(milliseconds: 150),
      delay: Duration(milliseconds: widget.delay),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: GestureDetector(
          onTap: () => widget.onPressed(),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            color: Colors.transparent,
            padding: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.text,
                style: GoogleFonts.montserrat(fontSize: 14, color: isHover ? Colors.orange : Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
