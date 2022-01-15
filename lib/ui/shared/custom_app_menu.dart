import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/shared/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  @override
  _CustomAppMenuState createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu> with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.72),
        border: Border.all(
          width: 1.0,
          color: Color.fromRGBO(0, 0, 0, 0.16),
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20.0,
            sigmaY: 20.0,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // _MenuTitle(isOpen: isOpen, controller: controller),
                // if (isOpen) ...[
                Text(
                  'DELTAX',
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.88),
                    fontWeight: FontWeight.w700,
                  ),

                  // TextStyle(
                  //   fontSize: 21,
                  //   letterSpacing: 1.14286,
                  //   color: Colors.black.withOpacity(0.88),
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomMenuItem(delay: 0, text: 'Inicio', onPressed: () => pageProvider.goTo(0)),
                    CustomMenuItem(delay: 30, text: 'Tecnología', onPressed: () => pageProvider.goTo(1)),
                    CustomMenuItem(delay: 60, text: 'Contacto', onPressed: () => pageProvider.goTo(2)),
                    CustomMenuItem(delay: 90, text: 'TMS', onPressed: () => pageProvider.goTo(3)),
                  ],
                )
                // ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required this.isOpen,
    required this.controller,
  }) : super(key: key);

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 45 : 0,
          ),
          Text('Menú', style: GoogleFonts.roboto(color: Colors.black, fontSize: 18)),
          Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
