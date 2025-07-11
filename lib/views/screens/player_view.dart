import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:music_player/locator.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';

import '../../models/track.dart';
import '../../viewmodels/player_view_model.dart';

class PlayerView extends StatelessWidget {
  final _logger = getIt<Logger>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MusicPlayerCubit, MusicPlayerState>(
        builder: (context, state)
    {
      final track = state.currentTrack;
      final player = context.read<MusicPlayerCubit>();
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Stack(
              children: [
                // Base background color (your primary color)
                Container(
                  color: Color(0xff161616),
                  width: double.infinity,
                  height: 100,
                ),

                // Overlay color (e.g., semi-transparent black)
                Container(
                  color: Color(0xffFF8A00).withAlpha(50),
                  // Change opacity as needed
                  width: double.infinity,
                  height: 100,
                ),

                // Transparent AppBar with icons/text
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/bxs-chevron-left.svg',
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                          Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  title: Text(
                    'Playing Now',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/heart.svg',
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
          ,
          body: Stack(
            alignment: Alignment.center,
            children: [
              RotatedBox(
                quarterTurns: 2,
                child: Stack(
                  children: [
                    // Background image
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Color(0xff161616), BlendMode.overlay),
                          image:
                          AssetImage("assets/image/avatar.png"),
                          // 👈 your image
                          fit: BoxFit.cover,
                          opacity: 0.2,
                        ),
                      ),
                    ),

                    // Dark overlay
                    Container(
                      color: Color(0xffFF8A00).withAlpha(
                          50), // 👈 adjust darkness here
                    ),
                  ],
                ),
              ),

              Column(
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
                              progress: 90,
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
                              child: Image.asset(
                                "assets/image/avatar.png",
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25, right: 50),
                            child: Text(
                              "03:20",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25, left: 50),
                            child: Text(
                              "03:37",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
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
                          onPressed: () {},
                          icon: Icon(Icons.shuffle, color: Colors.white),
                          iconSize: 24),
                      Column(
                        children: [
                          Text(track?.tag.title ?? "No Title",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          Text(track?.tag.albumArtist ?? "No Artist",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/loop.svg',
                              width: 24,
                              height: 24,
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn)),
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
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn)),
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
                              offset: const Offset(
                                2.0,
                                3.0,
                              ),
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xffFF7A00), Color(0xffFEB722)],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            try{
                              final tr = Track.fromPath("assets/music/test.mp3");
                              _logger.i("play button clicked");
                              if(state.playbackState == PlaybackState.playing){
                                player.pause();
                              }else{
                                player.play(await tr);
                              }
                            }catch(e){
                              _logger.e(e);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(24),
                            backgroundColor:
                            Colors.transparent, // Let gradient show
                            shadowColor:
                            Colors.transparent, // Optional: hide shadow
                          ),
                          child: SvgPicture.asset(
                            state.playbackState == PlaybackState.playing ?
                            'assets/icons/pause.svg' : 'assets/icons/Play.svg',
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
                                  Colors.white, BlendMode.srcIn)),
                          iconSize: 45),
                    ],
                  ),
                ],
              ),
            ],
          ));
    });
  }
}
