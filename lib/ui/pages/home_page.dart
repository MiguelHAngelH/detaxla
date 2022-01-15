import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vertical_landing_page/providers/page_provider.dart';

import 'package:vertical_landing_page/ui/shared/custom_app_menu.dart';

import 'package:vertical_landing_page/ui/views/home_video_view.dart';
import 'package:vertical_landing_page/ui/views/services_view_page.dart';
import 'package:vertical_landing_page/ui/views/download_view.dart';
import 'package:vertical_landing_page/ui/views/platform_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/application_view.dart';
 const url = "assets/background2.jpg";
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color:  Colors.white,
            image: DecorationImage(
              image: AssetImage(url),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              _HomeBody(),
              Positioned(right: 0, top: 0, child: CustomAppMenu()),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
        gradient:
            LinearGradient(colors: [Colors.pink, Colors.purpleAccent], begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [0.5, 0.5]),
      );
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      pageSnapping: false,
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        HomeVideoView(),
        AppView(),
        ServicesPageView(),
        PlatformView(),
        ContactView(),
        DownloadView(),

      ],
    );
  }
}
