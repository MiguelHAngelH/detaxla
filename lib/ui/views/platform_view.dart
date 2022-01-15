import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_fades.dart';

class PlatformView extends StatelessWidget {
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
              flex: 2,
              child: FadeInLeftBig(
                delay: Duration(seconds: 1),
                child: Container(
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: CachedNetworkImage(
                      width: double.infinity,
                      fit: BoxFit.contain,
                      imageUrl: "https://stages-filestasks-1am75ns0jb16n.s3.amazonaws.com/assets_deltax_la/Screenshot_1.png",
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
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
                  children: [
                    Text(
                      "Una plataforma para todos tus procesos",
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                        fontSize: 40,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Tus movimientos de carga incluyen el acceso a una plataforma personalizada para tu empresa, con seguimiento de carga, "
                      "documentación en línea, reportes automáticos, y más herramientas que facilitan las rutinas de equipos de logística.",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        height: 2,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.w400,
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
