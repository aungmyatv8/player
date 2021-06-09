import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Player extends StatefulWidget {
  Player({Key key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  VideoPlayerController _controller;
  bool showPlayButton = true;
  bool showControllers = true;
  int _playbackTime = 0;
  // String video1 =
  // "https://randombuuuu.s3-ap-southeast-1.amazonaws.com/Justin+Bieber+-+That+Should+Be+Me+(Lyrics).mp4";
  // String video2 =
  //     "https://randombuuuu.s3-ap-southeast-1.amazonaws.com/Waiting+for+you+Myanmar+song.mp4";

  String video1 = "videos/flutter.mp4";
  String video2 = "videos/justin.mp4";
  String video3 = "videos/yeyint.mp4";

  double num = 0;

  void _initPlayer() async {
    _controller = VideoPlayerController.asset(video2);
    await _controller.initialize();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _initPlayer();
    _controller.addListener(() {
      setState(() {
        _playbackTime = _controller.value.position.inSeconds;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  String intFixed(int n) {
    if (n < 10) {
      return n.toString().padLeft(2, "0");
    }
    return n.toString();
  }

  String secondToMinue(num) {
    int minute;
    int second;
    String fixed;
    if (num > 60) {
      minute = (num / 60).floor();
      second = (num % 60).round();
      return "$minute:${intFixed(second)}";
    } else if (num > 3600) {}
    num = num.floor();
    // fixed = intFixed(num);
    // print(fixed);
    return "00:$num";
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    // print(_controller.value.buffered[0].end);

    return _controller.value.isInitialized
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: 210,

            // margin: EdgeInsets.only(top: 3),
            child: Stack(
              // alignment: Alignment.bottomLeft,
              children: [
                Container(
                  child: VideoPlayer(_controller),
                ),

                Positioned(
                  // top: 10,
                  child: InkWell(
                    onTap: () {
                      // showControllers = !showControllers;
                      setState(() {
                        showControllers = !showControllers;
                      });
                    },
                    child: AnimatedOpacity(
                      opacity: showControllers ? 1 : 0,
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 210,
                          color: const Color.fromRGBO(0, 0, 0, 0.4),
                          child: showControllers
                              ? Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: _controller.value.isBuffering
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircularProgressIndicator()
                                                ],
                                              )
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(Icons.skip_previous,
                                                      size: 50,
                                                      color: Colors.white),
                                                  InkWell(
                                                    onTap: () {
                                                      _controller.seekTo(
                                                          _controller.value
                                                                  .position -
                                                              Duration(
                                                                  seconds: 15));
                                                    },
                                                    child: Image.asset(
                                                      'images/back.png',
                                                      width: 40,
                                                      height: 40,
                                                    ),
                                                  ),

                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        if (_controller
                                                                .value
                                                                .position
                                                                .inMilliseconds >=
                                                            _controller
                                                                .value
                                                                .duration
                                                                .inMilliseconds) {
                                                          _controller.seekTo(
                                                              const Duration(
                                                                  seconds: 0));
                                                        }

                                                        if (_controller
                                                            .value.isPlaying) {
                                                          _controller.pause();
                                                        } else {
                                                          _controller.play();
                                                        }
                                                      });
                                                    },
                                                    child: Icon(
                                                      _controller
                                                              .value.isPlaying
                                                          ? Icons.pause_circle
                                                          : Icons.play_circle,
                                                      size: 50,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  // Icon(Icons.fast_forward_sharp, size: 50, color: Colors.white),
                                                  InkWell(
                                                    onTap: () {
                                                      _controller.seekTo(
                                                          _controller.value
                                                                  .position +
                                                              Duration(
                                                                  seconds: 15));
                                                    },
                                                    child: Image.asset(
                                                      'images/ahead.png',
                                                      width: 40,
                                                      height: 40,
                                                    ),
                                                  ),

                                                  InkWell(
                                                      onTap: () {},
                                                      child: Icon(
                                                          Icons
                                                              .skip_next_rounded,
                                                          size: 50,
                                                          color: Colors.white)),
                                                ],
                                              ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  ValueListenableBuilder(
                                                      valueListenable:
                                                          _controller,
                                                      //  child:
                                                      //   Text(_controller.value.duration
                                                      //       .toString(), style: TextStyle(fontSize: 20, color: Colors.white),),
                                                      builder: (context,
                                                          VideoPlayerValue
                                                              value,
                                                          child) {
                                                        return Container(
                                                          // width: 300,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                  secondToMinue(value
                                                                      .position
                                                                      .inSeconds),
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white)),
                                                              SliderTheme(
                                                                data:
                                                                    SliderThemeData(
                                                                  activeTickMarkColor:
                                                                      Colors
                                                                          .transparent,
                                                                  inactiveTickMarkColor:
                                                                      Colors
                                                                          .transparent,
                                                                  thumbColor:
                                                                      Colors
                                                                          .blue,
                                                                  activeTrackColor:
                                                                      Colors
                                                                          .blue,
                                                                  inactiveTrackColor:
                                                                      Colors.teal[
                                                                          200],
                                                                  trackHeight:
                                                                      5,
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.6,
                                                                  child: Slider(
                                                                    value: value
                                                                        .position
                                                                        .inSeconds
                                                                        .toDouble(),
                                                                    min: 0,
                                                                    max: value
                                                                        .duration
                                                                        .inSeconds
                                                                        .toDouble(),
                                                                    divisions:
                                                                        20,
                                                                    label:
                                                                        secondToMinue(
                                                                            value.position.inSeconds),
                                                                    onChanged:
                                                                        (number) {
                                                                      _controller.seekTo(Duration(seconds: number.toInt()));
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                  secondToMinue(value
                                                                      .duration
                                                                      .inSeconds),
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white))
                                                            ],
                                                          ),
                                                        );
                                                      }),
                                                  Container(
                                                    // width: 50,
                                                    child: Row(children: [
                                                      Container(
                                                        width: 25,
                                                        height: 25,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          child: Image.asset("images/notes.png")),
                                                      Container(
                                                          child: Icon(
                                                        Icons
                                                            .zoom_out_map_outlined,
                                                        color: Colors.white,
                                                        size: 25,
                                                      )),
                                                    ]),
                                                  )
                                                ]),
                                          ),
                                        ],
                                      )
                                    ])
                              : null),
                    ),
                  ),
                )
                // ),
              ],
            ))
        : CircularProgressIndicator();
  }
}
