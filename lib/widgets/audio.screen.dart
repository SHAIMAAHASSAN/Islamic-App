import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/utils/images.dart';
class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  bool isPlaying = false;
  late AssetsAudioPlayer assetsAudioPlayer;
  @override
  void initState() {
    assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    assetsAudioPlayer.open(Audio("assets/audios/saba7.mp3"), autoStart: false);
    //assetsAudioPlayer.open(Audio("assets/audios/click.wav"), autoStart: false);
    audiListenerTrigger();

    // TODO: implement initState
    super.initState();
  }

  void audiListenerTrigger() {
    assetsAudioPlayer.playlistFinished.listen((event) {
      if (event&&mounted) {
        isPlaying = false;
        setState(() {});
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //Container for image
          Center(
            child: Container(
                margin: EdgeInsets.only(left: 32, right: 32),
                width: double.infinity,
                child: ClipRRect(
                  child: Image.asset(ImagesPath.morning, fit: BoxFit.contain,),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200), bottomRight: Radius.circular(200)),
                )
            ),
          ),

          //Container for audio player
          Positioned(
            child: Container(
              width: 300,
              height: 80,
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [BoxShadow(color: Colors.white70, blurRadius: 10.0, spreadRadius: 0.1)]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.fast_rewind, color: Colors.grey[700], size: 30,),
                  ),
                  IconButton(
                    onPressed: (){

                      if (assetsAudioPlayer.isPlaying.value) {
                        assetsAudioPlayer.pause();
                      } else {
                        /*  for (var i = 0; i < dataMorning.length; i++) {
                            var closedAssetAudioPlayer =
                            AssetsAudioPlayer.withId(i.toString());
                            if (closedAssetAudioPlayer.isPlaying.value) {
                              closedAssetAudioPlayer.stop();
                            }
                          }*/

                        assetsAudioPlayer.play();
                      }

                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    },
                    icon: (isPlaying)
                        ? const Icon(Icons.pause)
                        : const Icon(Icons.play_arrow),
                    color:Colors.grey[700],

                    //icon: Icon(Icons.play_arrow, color: Colors.grey[700], size: 30,),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.fast_forward, color: Colors.grey[700], size: 30,),
                  )
                ],
              ),
            ),
            bottom: 0,
          )
        ],
      ),
    ) ,)

    ;
  }
  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
