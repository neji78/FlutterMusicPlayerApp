import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player/viewmodels/music_controller.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';

class PlayerView extends StatelessWidget {
  final MusicController _musicController = MusicController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/bxs-chevron-left.svg',
              width: 24,
              height: 24,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
          iconSize: 24,
        ),
        title: Text(
          'Playing Now',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart.svg',
                  width: 24,
                  height: 24,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              iconSize: 24)
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 72,
          ),
          // SizedBox(height: 305,),
          Container(
            height: 303,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: CircularSeekBar(
                      width: double.infinity,
                      trackColor: Color(0xffFF8A00),
                      height: 296,
                      progress: 100,
                      barWidth: 5,
                      startAngle: 0,
                      sweepAngle: 360,
                      strokeCap: StrokeCap.butt,
                      progressColor: Color(0xffFF8A00),
                      innerThumbRadius: 7,
                      innerThumbStrokeWidth: 0,
                      innerThumbColor: Color(0xffFFB61D),
                      outerThumbRadius: 7,
                      outerThumbStrokeWidth: 10,
                      outerThumbColor: Color(0xffFF8A00),
                      animation: false,
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Material(
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffFF8A00),
                        width: 2,
                      ),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Material(
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffFFD600),
                        width: 5,
                      ),
                    ),
                    color: Color(0xffFF8A00),
                    child: SizedBox(
                      width: 220,
                      height: 220,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Material(
                    clipBehavior: Clip.hardEdge,
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    color: Color(0xffFFD600),
                    child: Container(
                      width: 180,
                      height: 180,
                      child: Image.asset("assets/image/avatar.png",
                      ),
                    ),
                  ),
                )
                // Align(
                //   alignment: Alignment.center,
                //   child: Image.asset("assets/image/back.png"),
                // )
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shuffle), iconSize: 24),
              Column(
                children: [
                  Text('Song Name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text('Artist Name',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/loop.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(
                          Colors.black, BlendMode.srcIn)),
                  iconSize: 24)
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/Playback.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
                iconSize: 45,
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffFEB722),
                      blurRadius: 20.0,
                      spreadRadius: 0.0,
                      offset: const Offset(2.0, 3.0,),
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [Color(0xffFF7A00), Color(0xffFEB722)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(24),
                    backgroundColor: Colors.transparent, // Let gradient show
                    shadowColor: Colors.transparent,     // Optional: hide shadow
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Play.svg',
                    width: 45,
                    height: 45,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),

              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Next.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(
                          Colors.black, BlendMode.srcIn)),
                  iconSize: 45),
            ],
          ),
        ],
      ),
    );
  }
}
