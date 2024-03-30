import 'package:animated_list_item/animated_list_item.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/model/data.roqua.model.dart';
import 'package:islamicapp/utils/audios.dart';
import 'package:islamicapp/widgets/card.widget.dart';
import 'package:islamicapp/widgets/doaa.widget.dart';

import '../model/doaa.model.dart';
class RoquaWidget extends StatefulWidget {
  const RoquaWidget({super.key});

  @override
  State<RoquaWidget> createState() => _RoquaWidgetState();
}

class _RoquaWidgetState extends State<RoquaWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlaying = false;

  late AssetsAudioPlayer assetsRoquaAudioPlayer;
  @override
  void initState() {
    assetsRoquaAudioPlayer= AssetsAudioPlayer.newPlayer() ;
    assetsRoquaAudioPlayer.open(Audio(AudiosPath.alRoqua),autoStart: false);
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _animationController.forward();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "الرقية الشرعية",
            textDirection: TextDirection.rtl,
          )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child:  CustomScrollView(
          slivers: [

            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == 0) {
                        // Your tile with play/pause button and text
                        return Column(
                          children: [
                          Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                                  //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                                ),
                                tileColor: Colors.brown[100],
                                leading:Icon(Icons.headset),
                          title: Text("الرقية الشرعية",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),),
                      trailing: IconButton(icon: (isPlaying) ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                      onPressed: (){

                      if (assetsRoquaAudioPlayer.isPlaying.value) {
                      assetsRoquaAudioPlayer.pause();
                      }
                      else {
                      assetsRoquaAudioPlayer.play();
                      }
                      setState(() {
                      isPlaying = !isPlaying;
                      });
                      }),
                      ),
                      ),),
                      Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                      child: Text("تعد الرقية الشرعية هديًّا نبويًّا من هدي النبيّ محمد صلّى الله عليه وسلّم، حيث قال عنها: (اعرِضوا عليَّ رُقاكُم، لا بأسَ بالرُّقى ما لَم تَكُن شِركًا)،[١] وقد احتوى القرآن الكريم على العديد من الآيات القرآنية التي اشتملت على رقًا شرعية، وفي الآتي سردٌ لمجموعة منها، يليها أدعية الرقية الشرعية من السنة النبوية:"
                      ,textDirection: TextDirection.rtl,),),

                          ],
                        );
                      }

                  return AnimatedListItem(
                    index: index-1,
                    length:dataRoquia.length,
                    aniController: _animationController,
                    animationType: AnimationType.rotate,
                    child:

                    DoaaWidget(text: dataRoquia[index].text1),

                  );
                },
                childCount: dataRoquia.length,
              ),
            ),
          ],

        )


        /*Column(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                    //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                  ),
                  tileColor: Colors.brown[100],
                  leading:Icon(Icons.headset),
                    *//* CircleAvatar(backgroundImage: AssetImage(
                    "assets/images/kaaba.png",
                  )
                    ,*//**//*radius: 25,*//**//*),*//*
                  title: Text("الرقية الشرعية",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),),
                trailing: IconButton(icon: (isPlaying) ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                    onPressed: (){

                      if (assetsRoquaAudioPlayer.isPlaying.value) {
                        assetsRoquaAudioPlayer.pause();
                      }
                      else {
                        assetsRoquaAudioPlayer.play();
                      }
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    }),
                ),
              ),
            ),
            Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
        child: Text("تعد الرقية الشرعية هديًّا نبويًّا من هدي النبيّ محمد صلّى الله عليه وسلّم، حيث قال عنها: (اعرِضوا عليَّ رُقاكُم، لا بأسَ بالرُّقى ما لَم تَكُن شِركًا)،[١] وقد احتوى القرآن الكريم على العديد من الآيات القرآنية التي اشتملت على رقًا شرعية، وفي الآتي سردٌ لمجموعة منها، يليها أدعية الرقية الشرعية من السنة النبوية:"
        ,textDirection: TextDirection.rtl,),
            ),
        //DoaaWidget(text:  "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ* الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ* الرَّحْمَنِ الرَّحِيمِ* مَالِكِ يَوْمِ الدِّينِ* إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ* اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ* صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين. \n[سورة الفاتحة، آية:1-7]َ"),

           // DoaaData(text1: "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ* الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ* الرَّحْمَنِ الرَّحِيمِ* مَالِكِ يَوْمِ الدِّينِ* إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ* اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ* صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ"),
            Expanded(
              child: ListView.builder(
                  itemCount: dataRoquia.length,
                  itemBuilder: (context,index) {
                    return AnimatedListItem(
                      index: index,
                      length:dataRoquia.length,
                      aniController: _animationController,
                      animationType: AnimationType.rotate,
                      child:
              
                      DoaaWidget(text: dataRoquia[index].text1),
              
                    );
                  }),
            ),
          ],


        ),*/
      ),
    );
  }

  @override
  void dispose() {
    assetsRoquaAudioPlayer.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
