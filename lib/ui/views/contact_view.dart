import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_attention_seekers.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_fades.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_flips.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_specials.dart';
import 'package:vertical_landing_page/ui/shared/text_form_field.dart';

class ContactView extends StatefulWidget {
  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:FadeInLeftBig(
              delay: Duration(seconds: 1),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height - 185,
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
                  padding: const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Transporta carga con nosotros",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.black.withOpacity(1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Empresa',
                              onChanged: (value) => {},
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Nombre Completo',
                              onChanged: (value) => {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Telefono',
                              onChanged: (value) => {},
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Correo Electrónico',
                              onChanged: (value) => {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Tipo de Servicio*',
                              onChanged: (value) => {},
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Tipo de Servicio*',
                              onChanged: (value) => {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Origen',
                              onChanged: (value) => {},
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextFormFieldGeneric(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.sentences,
                              labelText: 'Destino',
                              onChanged: (value) => {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormFieldGeneric(
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        labelText: 'Coméntanos',
                        onChanged: (value) => {},
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: new BoxDecoration(
                            color: Colors.transparent, border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(11)),
                        child: Center(
                          child: Text(
                            'Cotizar',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 60,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flash(
                  delay: Duration(seconds: 2),
                  child: Column(
                    children: [
                      Text(
                        "Contacto",
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
                        "Comparte la necesidad de tu empresa y un especialista logístico de DeltaX se pondrá en contacto contigo.",
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
                SizedBox(
                  height: 60,
                ),
                Flash(
                  delay: Duration(seconds: 2),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Brasil",
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  fontSize: 40,
                                  color: Colors.black.withOpacity(1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "São Paulo",
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Bolivia",
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  fontSize: 40,
                                  color: Colors.black.withOpacity(1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Santa Cruz de la Sierra",
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Chile",
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  fontSize: 40,
                                  color: Colors.black.withOpacity(1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Santiago de Chile",
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
