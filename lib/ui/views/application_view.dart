import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_slides.dart';
import 'package:vertical_landing_page/ui/pages/home_page.dart';

import '../animations/pulse_animate.dart';

class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
    print('SADADSASD');

    _controller.addListener(_scrollListener);
  }

  _scrollListener() {
    print('SADADSASD');
    if (_controller.offset >= _controller.position.maxScrollExtent && !_controller.position.outOfRange) {
      print("reach the bottom");
    }
    if (_controller.offset <= _controller.position.minScrollExtent && !_controller.position.outOfRange) {
      setState(() {
        print("reach the top");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: true);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // decoration: BoxDecoration(
      //   color:  Colors.white,
      //   image: DecorationImage(
      //     image: AssetImage(url),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              AnimatedOpacity(
                opacity: (pageProvider.currentIndex == 1 || pageProvider.currentIndex == 2) ? pageProvider.opacity : 0,
                duration: Duration(seconds: 2),
                child: SlideInUp(
                  duration: Duration(seconds: 3),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: constraints.maxHeight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 100, bottom: 50),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: CachedNetworkImage(
                            imageUrl: "https://stages-filestasks-1am75ns0jb16n.s3.amazonaws.com/assets_deltax_la/27-271548_phone-frame-png.png",
                            placeholder: (context, url) => CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: (pageProvider.currentIndex == 1 || pageProvider.currentIndex == 2) ? pageProvider.opacity : 0,
                duration: Duration(seconds: 2),
                child: SlideInRight(
                  duration: Duration(seconds: 3),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 100, right: 100),
                      child: Text(
                        'Beneficios para tí!',
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Colors.black.withOpacity(0.88),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: (pageProvider.currentIndex == 1 || pageProvider.currentIndex == 2) ? pageProvider.opacity : 0,
                duration: Duration(seconds: 1),
                child: SlideInLeft(
                  duration: Duration(seconds: 5),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 100, left: 100),
                      child: Text(
                        'Postúlate y gana!',
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Colors.black.withOpacity(0.88),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: (pageProvider.currentIndex == 1 || pageProvider.currentIndex == 2) ? pageProvider.opacity : 0,
                duration: Duration(seconds: 2),
                child: SlideInLeft(
                  duration: Duration(seconds: 3),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 100, left: 100),
                      child: Text(
                        'Historial de tus pagos!',
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Colors.black.withOpacity(0.88),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: (pageProvider.currentIndex == 1 || pageProvider.currentIndex == 2) ? pageProvider.opacity : 0,
                duration: Duration(seconds: 2),
                child: SlideInRight(
                  duration: Duration(seconds: 5),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 100, right: 100),
                      child: Text(
                        'Mejores precios!',
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Colors.black.withOpacity(0.88),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned.fill(
              //   top: 100,
              //   left: 0,
              //   child: ZoomIn(
              //     duration: Duration(seconds: 2),
              //     delay: Duration(seconds: 2),
              //     animate: true,
              //     child: SizedBox(
              //       width: MediaQuery.of(context).size.width,
              //       child: Align(
              //         alignment: Alignment.topCenter,
              //         child: Text(
              //           'La revolución del transporte  de carga en Latinoamérica.',
              //           maxLines: 2,
              //           style: GoogleFonts.montserrat(
              //             fontSize: 35,
              //             color: Colors.black.withOpacity(0.88),
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          );
        },
      ),
    );
  }
}
