// import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = new PageController();

  List<String> _pages = [ 'home', 'aplication', 'services', 'platform', 'contact', 'download'];
  int currentIndex = 0;
  double opacity = 0;
  createScrollController(String routeName) {
    this.scrollController = new PageController(initialPage: getPageIndex(routeName));

    html.document.title = _pages[getPageIndex(routeName)];

    this.scrollController.addListener(() {
      var index = (this.scrollController.page!).round();
      var a = (this.scrollController.page!) ;
      print("PAGE $a");
      if (a > 0 && a < 0.3) {
        opacity = 0.3;
      }
      if (a > 0.3 && a < 0.6) {
        opacity = 0.45;
      }
      else if (a > 0.6 && a < 0.9) {
        opacity = 0.75;
      }
      if (a > 0.9 && a < 1.2) {
        opacity = 1;
      }
      if (a > 1.2 && a < 1.5) {
        opacity = 0.75;
      }
      if (a > 1.5) {
        opacity = 0.55;
      }
      if (a > 1.6) {
        opacity = 0.45;
      }
      if (a > 1.7) {
        opacity = 0.35;
      }
      if (a > 1.8) {
        opacity = 0.25;
      }
      if(a == 1){
        opacity = 1;
      }
      if (a > 1.8 && a < 1.8) {
        opacity = 0.90;
      }
      if (a >= 3 && a <= 4) {
        opacity = a - 3;
      }
      if (a >= 4 && a <= 5) {
        opacity = a - 4;
      }
      // print("index $index");
      // print("page $a");
      // print("index $index OPACITY ${opacity.abs()}");
      notifyListeners();
      if (index != currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_pages[index]}');
        currentIndex = index;
        html.document.title = _pages[index];
      }
    });
  }

  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    // final routeName = _pages[index];
    html.window.history.pushState(null, 'none', '#/${_pages[index]}');

    scrollController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
