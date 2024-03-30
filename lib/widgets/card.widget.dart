import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamicapp/model/data.evening.model.dart';
import 'package:islamicapp/provider/audio.player.provider.dart';
import 'package:provider/provider.dart';

import '../model/card.data.model.dart';
import '../utils/images.dart';
class CardWidget extends StatefulWidget {
  CardWidget({super.key,required this.data, required this.image, required this.length,required this.id, required this.text1,required this.text2,required this.text3,required this.noRepeat,required this.audio,required this.maxValue});
  String text1;
 String text2;
 String text3;
  String noRepeat;
 String audio;
  double maxValue;
  int length;
  int id;
  List<CardData>data;
  String image;



  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> with AutomaticKeepAliveClientMixin {
  double value =1;
  bool isPlaying = false;

  late AssetsAudioPlayer assetsAudioPlayer;


  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    assetsAudioPlayer = AssetsAudioPlayer.withId(widget.id.toString());
    assetsAudioPlayer.open(Playlist(audios:[Audio(widget.data[widget.id].audio)] ),autoStart: false);

   audiListenerTrigger();

    // TODO: implement initState
    super.initState();

  }


  void audiListenerTrigger() {
    assetsAudioPlayer.playlistFinished.listen((event) {
      if (event &&mounted) { // Check if still mounted
        isPlaying = false;
        //   if(mounted){
      setState(() {

      });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
         // height: 250,
          decoration:  BoxDecoration(
            image: DecorationImage(
         image: AssetImage(widget.image),
         fit: BoxFit.cover,
         opacity: .2,
         ),
            color: Colors.brown[100],
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: (isPlaying) ? Icon(Icons.pause) : Icon(Icons.play_arrow),onPressed: (){

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
                        setState(() {
                          isPlaying = !isPlaying;
                        });

                      },),
                      Text(widget.text1,style: TextStyle(fontSize: 14,color: Colors.red),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(widget.text2,
                    textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize:16,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(widget.text3,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.brown),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                           /* if (assetsAudioPlayerClick.isPlaying.value) {
                              assetsAudioPlayerClick.pause();
                            } else {
                              assetsAudioPlayerClick.play();
                            }*/
                            if(value>=widget.maxValue){
                              value=0;
                            }
                           value += 1;
                            setState(() {

                            });

                          },

                          child: AnimatedFlipCounter(
                            value: value,
                            textStyle: TextStyle(fontSize: 30,color: Colors.red),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text(widget.noRepeat,textDirection: TextDirection.rtl,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),),
        const SizedBox(height: 10,),
      ],
    );
  }
/*@override
  Future<void> dispose() async {
  super.dispose();
 *//* if (_shouldDisposeAudio) {
    isPlaying=false;
    setState(() {

    });*//*

  await  assetsAudioPlayer.stop();
   assetsAudioPlayer.dispose();
  // _shouldDisposeAudio=true;
  //}
    // TODO: implement dispose

  }*/
@override
  void dispose() {
  assetsAudioPlayer.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
