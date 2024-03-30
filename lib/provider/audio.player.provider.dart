import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';

import '../model/card.data.model.dart';

class AudioPlayerProvider extends ChangeNotifier{


  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;
  bool isClick=true;
  late AssetsAudioPlayer assetsAudioPlayer;
 // late AssetsAudioPlayer assetsAudioPlayerClick;

  void audiListenerTrigger() {
    assetsAudioPlayer.playlistFinished.listen((event) {
      if (event) { // Check if still mounted
        _isPlaying = false;
     notifyListeners();
      }
    });
  }

  void getAudio(List<CardData> data,int index){

    assetsAudioPlayer = AssetsAudioPlayer.withId(index.toString());
    assetsAudioPlayer.open(Playlist(audios:[Audio(data[index].audio)] ),autoStart: false);
   // assetsAudioPlayerClick = AssetsAudioPlayer.newPlayer();
    // assetsAudioPlayer.open(Audio("assets/audios/saba7.mp3"), autoStart: false);
   // assetsAudioPlayerClick.open(Audio("assets/audios/click.wav"), autoStart: false);
    //audiListenerTrigger();
    assetsAudioPlayer.playlistFinished.listen((event) {
      if (event) { // Check if still mounted
        _isPlaying = false;
        notifyListeners();
      }
    });

  }

  void playAudio ( int length){
    if (assetsAudioPlayer.isPlaying.value) {
      assetsAudioPlayer.pause();
    } else {
      for (var i = 0; i < length; i++) {
        var closedAssetAudioPlayer =
        AssetsAudioPlayer.withId(i.toString());
        if (closedAssetAudioPlayer.isPlaying.value) {
          closedAssetAudioPlayer.stop();
        }
      }

      assetsAudioPlayer.play();
    }
   // toggleplaying();
    _isPlaying = !_isPlaying;
  notifyListeners();

}

  void toggleplaying() {
    _isPlaying = !_isPlaying;
    notifyListeners();

  }


@override
  void dispose() {
    assetsAudioPlayer.dispose();
    // TODO: implement dispose
    super.dispose();
  }


}