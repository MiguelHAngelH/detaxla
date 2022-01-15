import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_fades.dart';
import 'package:vertical_landing_page/ui/shared/custom_card.dart';

class ServicesPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      // decoration: BoxDecoration(
      //   color:  Colors.white,
      //   image: DecorationImage(
      //     image: AssetImage(url),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: FadeInLeftBig(
              delay: Duration(seconds: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Revolucionamos la forma de asegurar tu carga",
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
                    "Además de ofrecer servicios de logística, facilitamos la protección de tu carga.",
                    maxLines: 3,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: FadeInRightBig(
                  delay: Duration(seconds: 1),
                  child: CustomCard(
                    icon: Icons.gps_fixed,
                    title: "GEOLOCALIZACIÓN",
                    subtitle: "Ahora podrás conocer la ubicación exacta del camión que lleva tu carga. Iniciando sesión en nuestro portal cliente, "
                        "podrás monitorear tus operaciones en tránsito, así como también el historial de operaciones pasadas.",
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: FadeInRightBig(
                  delay: Duration(seconds: 2),
                  child: CustomCard(
                    icon: Icons.saved_search,
                    title: "SEGUIMIENTO",
                    subtitle:
                        "Ahora podrás saber todos los pasos a seguir para el transporte de tu carga, podrás ver todas y cada una de las etapas en las que se encuentra cada operación, así como también cargar y/o consultar documentos según la etapa.",
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                  child: FadeInRightBig(
                delay: Duration(seconds: 3),
                child: CustomCard(
                  icon: Icons.attach_money,
                  title: "COTIZACIONES",
                  subtitle:
                      "Ahora podrás solicitar una cotización de manera sencilla, práctica y rápida. Podrás solicitar cotizaciones por cada uno de los servicios que ofertamos, con un tiempo de respuesta inmediato dentro de las 24 horas de realizada la solicitud.",
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
