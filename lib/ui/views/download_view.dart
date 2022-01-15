import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_attention_seekers.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_fades.dart';
import 'package:vertical_landing_page/ui/pages/home_page.dart';

class DownloadView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: FadeInLeftBig(
                delay: Duration(seconds: 2),
                child: Pulse(
                  duration: Duration(seconds: 1),
                  delay: Duration(seconds: 3),
                  endInc: 1.01,
                  beginDesc: 1.01,
                  infinite: true,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage("assets/app.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Expanded(
              flex: 1,
              child: FadeInRightBig(
                delay: Duration(seconds: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Descarga nuestra aplicación gratuita!",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 40,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Container(
                    //   width: 200,
                    //   height: 200,
                    //   decoration: BoxDecoration(
                    //     color: Colors.transparent,
                    //     image: DecorationImage(
                    //       image: AssetImage("assets/qr.png"),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),

                    Flash(
                      delay: Duration(seconds: 6),
                      child: Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage("assets/google.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child:  FadeInRightBig(
                            delay: Duration(seconds: 2),
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              // color: Colors.blue,
                              size: 60,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child:  FadeInRightBig(
                            delay: Duration(seconds: 3),
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              // color: Colors.pink,
                              size: 60,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child:  FadeInRightBig(
                            delay: Duration(seconds: 4),
                            child: FaIcon(
                              FontAwesomeIcons.whatsapp,
                              // color: Colors.green,
                              size: 60,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: FadeInRightBig(
                            delay: Duration(seconds: 5),
                            child: FaIcon(
                              FontAwesomeIcons.linkedinIn,
                              // color: Colors.lightBlue,
                              size: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FadeInUpBig(
                      delay: Duration(seconds: 6),
                      child: Text(
                        "© Copyright DeltaX - 2022",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.black.withOpacity(1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
