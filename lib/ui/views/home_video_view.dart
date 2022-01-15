import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/animations/animate_do_zooms.dart';
import 'package:video_player/video_player.dart';

class HomeVideoView extends StatefulWidget {
  @override
  State<HomeVideoView> createState() => _HomeVideoViewState();
}

class _HomeVideoViewState extends State<HomeVideoView> {
  late VideoPlayerController _controller;
  bool isHover = false;
  bool isHover2 = false;
  bool isHover3 = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network("https://stages-filestasks-1am75ns0jb16n.s3.amazonaws.com/assets_deltax_la/Production+Id+5200378-1"
        ".mp4");
    _controller.initialize().then((_) => setState(() {}));
    _controller.addListener(() {});
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(
            builder: (context, constraints) {
              print(constraints);
              return FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
                // child: AnimatedOpacity(
                //   opacity: pageProvider.currentIndex == 1 ? pageProvider.opacity : 0,
                //   duration: Duration(seconds: 2),
                //   child: Text(
                //     'About',
                //     style: GoogleFonts.montserratAlternates(fontSize: 80, fontWeight: FontWeight.bold),
                //   ),
                // ),
              );
            },
          ),
        ),
        Positioned.fill(
          top: 150,
          left: 0,
          child: ZoomIn(
            duration: Duration(seconds: 3),
            delay: Duration(seconds: 2),
            animate: true,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'La revolución del transporte  de carga en Latinoamérica!',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => isHover3 = true),
            onExit: (_) => setState(() => isHover3 = false),
            child: ZoomIn(
              duration: Duration(seconds: 3),
              delay: Duration(seconds: 2),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30, right: 30),
                  width: 54,
                  height: 54,
                  decoration: new BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: isHover3 ? Colors.orange : Colors.white, width: 2)),
                  child: new Icon(
                    Icons.play_arrow_rounded,
                    color: isHover3 ? Colors.orange : Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: ZoomIn(
            duration: Duration(seconds: 3),
            delay: Duration(seconds: 2),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (_) => setState(() => isHover = true),
                    onExit: (_) => setState(() => isHover = false),
                    child: Container(
                      width: 200,
                      height: 54,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.only(bottom: 30, left: 30),
                      decoration: new BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: isHover ? Colors.orange : Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                        child: Text(
                          'Cotiza tu carga',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: isHover ? Colors.orange : Colors.white,
                            fontWeight: isHover ? FontWeight.w700 : FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
