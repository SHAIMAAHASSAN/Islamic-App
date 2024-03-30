import 'package:animated_list_item/animated_list_item.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/model/card.data.model.dart';
import 'package:islamicapp/model/data.evening.model.dart';
import 'package:islamicapp/utils/images.dart';

import '../widgets/card.widget.dart';
class EveningPage extends StatefulWidget {
  const EveningPage({super.key});

  @override
  State<EveningPage> createState() => _EveningPageState();
}

class _EveningPageState extends State<EveningPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
 /* bool isPlaying = false;
  late AssetsAudioPlayer assetsAudioPlayerEvenning;*/


    @override
    void initState() {
      super.initState();
      _animationController = AnimationController(
        duration: const Duration(milliseconds: 3000),
        vsync: this,
      );
      _animationController.forward();
    }
  /*  assetsAudioPlayerEvenning = AssetsAudioPlayer.newPlayer();
    assetsAudioPlayerEvenning.open(Audio("assets/audios/elmasa.mp3"), autoStart: false);
    audiListenerTrigger();*/


  void audiListenerTrigger() {
  /*  assetsAudioPlayerEvenning.playlistFinished.listen((event) {
      if (event) {
        isPlaying = false;
        setState(() {});*/
    /*  }
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "أذكار المساء",
                textDirection: TextDirection.rtl,
              )),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                /*  Row(
                    children: [
                    *//*  IconButton(
                        icon: (isPlaying)
                            ? const Icon(Icons.pause)
                            : const Icon(Icons.play_arrow),
                        onPressed: () {
                          if (assetsAudioPlayerEvenning.isPlaying.value) {
                            assetsAudioPlayerEvenning.pause();
                          } else {
                            assetsAudioPlayerEvenning.play();
                          }

                          setState(() {
                            isPlaying = !isPlaying;
                          });
                        },
                      ),*//*
                      const SizedBox(
                        width: 220,
                      ),
                      const Text(
                        "للاستماع ",
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.headset_sharp),
                    ],
                  ),*/
                  SizedBox(
                    height: 720,
                    child: ListView.builder(
                        itemCount: dataEvening.length,
                        itemBuilder: (context,index) {
                          return AnimatedListItem(
                            index: index,
                            length: dataEvening.length,
                            aniController: _animationController,
                            animationType: AnimationType.rotateLeft,
                            child:


                            CardWidget(
                              data: dataEvening,
                              image: ImagesPath.eveningHD,
                              text1: dataEvening[index].text1,
                              text2: dataEvening[index].text2,
                              text3: dataEvening[index].text3,
                              noRepeat: dataEvening[index].noRepeat,
                              audio: dataEvening[index].audio,
                              maxValue: dataEvening[index].maxValue,
                              id: index,
                              length: dataEvening.length,
                            ),

                          );
                        }),
                  )
        
        /*          CardWidget(
                    text1: "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ",
                    text2:
                    "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
                    text3: "[آية الكرسى - البقرة 255]. ",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ",
                    text2:
                    "آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ.",
                    text3: "[البقرة 285 - 286].,من قرأ آيتين من آخر سورة البقرة في ليلة كفتاه. ",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ",
                    text2:
                    "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.",
                    text3: "[سورة الصمد]. ",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ",
                    text2:
                    "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ",
                    text3: "[سورة الفلق]. ",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ",
                    text2:
                    "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ",
                    text3: "[سورة الناس]. ",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر. ",
                    text3:
                    "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ . ",
                    text3:
                    "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً. ",
                    text3:
                    "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة.",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك. ",
                    text3: "من قالها أعتقه الله من النار.",
                    noRepeat: "اربع مرات",
                    audio:"",
                    maxValue: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.  ",
                    text3: "من قالها حين يصبح أدى شكر يومه.",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. ",
                    text3: "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة.",
                    noRepeat: "سبع مرات",
                    audio:"",
                    maxValue: 7,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم. ",
                    text3: "لم يضره من الله شيء.",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرُ.",
                    text3: "",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "أَمْسَيْنَا  عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.",
                    text3: "",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه.",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ.",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ.",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي.",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),*/
                 /* const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ. ",
                    text3: "",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "أَمْسَيْنا وَأَمْسَى الْمُلْكُ للهِ رَبِّ الْعَالَمَيْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَهَا. ",
                    text3: "",
                    noRepeat: "مرة",
                    audio: "",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم.  ",
                    text3: "",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد.",
                    text3:
                    "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.",
                    noRepeat: "عشر مرات",
                    audio:"",
                    maxValue: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ. ",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ. ",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ.  ",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ.  ",
                    text3: "",
                    noRepeat: "ثلاث مرات",
                    audio:"",
                    maxValue: 3,
                  ),
                  *//*const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا.",
                    text3: "",
                    noRepeat: "مرة",
                    value: 1,
                    maxValue: 1,
                  ),*//*
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2:
                    "اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ.",
                    text3: "ذكر طيب.",
                    noRepeat: "مرة",
                    audio:"",
                    maxValue:1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                      text1: "ِ",
                      text2:
                      "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ. ",
                      text3:
                      "كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان. ",
                      noRepeat: "مائة مرة",
                      audio:"",
                      maxValue: 100),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2: "سُبْحـانَ اللهِ وَبِحَمْـدِهِ.  ",
                    text3:
                    "حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ. ",
                    noRepeat: "مائة مرة",
                    audio:"",
                    maxValue: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardWidget(
                    text1: "ِ",
                    text2: "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ   ",
                    text3:
                    "مائة حسنة، ومُحيت عنه مائة سيئة، وكانت له حرزاً من الشيطان حتى يمسى",
                    noRepeat: "مائة مرة",
                    audio:"",
                    maxValue: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),*/
                ],
              ),
            )));
  }
  @override
  void dispose() {
  /*  if (context.mounted) {
      assetsAudioPlayerEvenning.dispose();
    }*/
    // TODO: implement dispose
    super.dispose();
  }
}
