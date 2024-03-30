
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/model/card.data.model.dart';
import 'package:islamicapp/provider/audio.player.provider.dart';
import 'package:provider/provider.dart';

class CardWidgetEx extends StatefulWidget {
  final int id;
  final List<CardData> data;
  final int length;
  final String text1;
  final String text2;
  final String text3;
  final double maxValue;
  final String noRepeat;
   final String audio;

  CardWidgetEx({
    required this.id,
    required this.data,
    required this.length,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.maxValue,
    required this.audio,
    required this.noRepeat,
  });

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidgetEx> {
  double value = 1;
  late AssetsAudioPlayer assetsAudioPlayer;
  late AudioPlayerProvider audioState;late bool x;

  @override
  void initState() {
    super.initState();
    audioState = Provider.of<AudioPlayerProvider>(context, listen: false);
    assetsAudioPlayer = AssetsAudioPlayer.withId(widget.id.toString());
    assetsAudioPlayer.open(Playlist(audios:[Audio(widget.data[widget.id].audio)]), autoStart: false);

    audiListenerTrigger();
  }

  void audiListenerTrigger() {
    assetsAudioPlayer.playlistFinished.listen((event) {
      if (event && mounted) {
       x== audioState.isPlaying;
       x=false;
       setState(() {

       });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioPlayerProvider>(
      builder: (context, audioState, _) {
        return Column(
          children: [
            // Your widget UI here
            IconButton(
              icon: (audioState.isPlaying) ? Icon(Icons.pause) : Icon(Icons.play_arrow),
              onPressed: () {
                if (assetsAudioPlayer.isPlaying.value) {
                  assetsAudioPlayer.pause();
                } else {
                  for (var i = 0; i < widget.length; i++) {
                    var closedAssetAudioPlayer =
                    AssetsAudioPlayer.withId(i.toString());
                    if (closedAssetAudioPlayer.isPlaying.value) {
                      closedAssetAudioPlayer.stop();
                    }
                  }
                  assetsAudioPlayer.play();
                }
                audioState.toggleplaying();
              },
            ),
            // Other widget content
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    assetsAudioPlayer.stop();
    assetsAudioPlayer.dispose();
    super.dispose();
  }
}