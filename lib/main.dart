import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/router/router.dart';
 
void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider() )
      ],
      child: MyApp(),
    );
  }
}



 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() { 
    super.initState();
    Flurorouter.configureRoutes();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      initialRoute: '/about',
      theme: ThemeData(
        toggleableActiveColor: Colors.orange,

        appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white, // For both Android + iOS

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          titleTextStyle: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          iconTheme: const IconThemeData(color: Colors.orange),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.orange,  primaryColorDark: Colors.orange),
        buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: GoogleFonts.montserrat(
            fontSize: 18,
            color: const Color.fromRGBO(0, 0, 0, 0.6),
          ),

          hintStyle: TextStyle(fontSize: 20),
          //  hintStyle: GoogleFonts.montserrat(
          //   fontSize: 16,
          //   color: const Color(0xFF000)
          // ),
          contentPadding: const EdgeInsets.fromLTRB(18.5, 18.5, 18.5, 18.5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              color:  Color(0xffEC8105),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              color:  Color(0xffe0e0e0),
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              color:  Color(0xffe0e0e0),
              width: 1,
            ),
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}