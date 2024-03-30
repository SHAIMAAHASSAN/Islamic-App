import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/provider/tasbeh.provider.dart';
import 'package:islamicapp/widgets/sala.widget.dart';
import 'package:islamicapp/widgets/tasbe7.widget.dart';
import 'package:islamicapp/widgets/toggle.tasbehi.widget.dart';
import 'package:provider/provider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../model/prayerCount.model.dart';
import '../widgets/header.widget.dart';
import '../widgets/tasbihCounter.widget.dart';
class TasbehPage extends StatefulWidget {
  const TasbehPage({super.key});

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
  bool  _showSecondWidget=false;
  @override
  void initState() {
    super.initState();
   // Provider.of<TasbehProvider>(context, listen: false).loadSavedValue();
    Future.microtask(() => context.read<SubhanAllahWbehamdaCount>().loadCount());
    Future.microtask(() => context.read<AstaghfirullahCount>().loadCount());
    Future.microtask(() => context.read<SubhanAllahCount>().loadCount());
    Future.microtask(() => context.read<ElhamedAllahCount>().loadCount());
    Future.microtask(() => context.read<LaelAllahCount>().loadCount());
    Future.microtask(() => context.read<LaHawlaCount>().loadCount());
    Future.microtask(() => context.read<AlhamSaliCount>().loadCount());
    Future.microtask(() => context.read<GhersElGanaCount>().loadCount());

  }




  @override
  Widget build(BuildContext context) {
    final subhanAllahWbehamdaCount = Provider.of<SubhanAllahWbehamdaCount>(context);
    final astaghfirullahCount = Provider.of<AstaghfirullahCount>(context);
    final subhanAllahCount = Provider.of<SubhanAllahCount>(context);
    final elhamedAllahCount = Provider.of<ElhamedAllahCount>(context);
    final laelAllahCount = Provider.of<LaelAllahCount>(context);
    final laHawlaCount = Provider.of<LaHawlaCount>(context);
    final alhamSaliCount = Provider.of<AlhamSaliCount>(context);
    final ghersElGanaCount = Provider.of<GhersElGanaCount>(context);


    final barValueProvider = Provider.of<TasbehProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerRight,
            child: const Text('التسابيح',textDirection: TextDirection.rtl,)),
      ),
      body: Container(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
               ToggleTasbehiWidget(textHeader: "سُبْحـانَ اللهِ وَبِحَمْـدِه ",
                    text: " سُبْحـانَ اللهِ وَبِحَمْـدِه (100)", count: subhanAllahWbehamdaCount.count, incrementCount:  subhanAllahWbehamdaCount.incrementCount,
                   reset: subhanAllahWbehamdaCount.resetValue, maxValue: 100),

              /*  InkWell(
                    onTap: () {
                      setState(() {
                        _showSecondWidget = !_showSecondWidget;
                      });
                    },
                    child: HeaderWidget(text:  "سبحان الله")),

                Visibility(
                  visible: _showSecondWidget,
                  child: TasbihCounter(
                    "سبحان الله",
                    subhanAllahCount.count,
                    subhanAllahCount.incrementCount,
                    33

                  ),
                ),*/
                SizedBox(height: 20),

                ToggleTasbehiWidget(textHeader:  "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْه", text:  "  أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْه  (100)",
                    count: astaghfirullahCount.count, incrementCount:  astaghfirullahCount.incrementCount,
                    reset: astaghfirullahCount.resetValue,maxValue: 100),

                SizedBox(height: 20),

                ToggleTasbehiWidget(textHeader:  " سبحان الله", text:  " سبحان الله  (33)",
                    count: subhanAllahCount.count, incrementCount:  subhanAllahCount.incrementCount,
                    reset: subhanAllahCount.resetValue,maxValue: 33),
                SizedBox(height: 20),

                ToggleTasbehiWidget(textHeader:  " الحمد الله ", text:  "  الحمد الله (33)",
                    count: elhamedAllahCount.count, incrementCount:  elhamedAllahCount.incrementCount,
                    reset: elhamedAllahCount.resetValue,maxValue: 33),
                SizedBox(height: 20),

                ToggleTasbehiWidget(textHeader:  " لا إله إلا الله والله أكبر ", text:  " لا إله إلا الله والله أكبر (33)",
                    count: laelAllahCount.count, incrementCount:  laelAllahCount.incrementCount,
                    reset: laelAllahCount.resetValue,maxValue: 33),
                SizedBox(height: 20),
                ToggleTasbehiWidget(textHeader:  " لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ  ", text:  " لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ  (100)",
                    count: laHawlaCount.count, incrementCount:  laHawlaCount.incrementCount,
                    reset: laHawlaCount.resetValue,maxValue: 100),

                SizedBox(height: 20),
                ToggleTasbehiWidget(textHeader:  "اللهم صّلِ وسَلّمْ عَلۓِ نَبِيْنَامُحَمد ﷺ ", text:  " اللهم صّلِ وسَلّمْ عَلۓِ نَبِيْنَامُحَمد ﷺ (10000)",
                    count: alhamSaliCount.count, incrementCount:  alhamSaliCount.incrementCount,
                    reset: alhamSaliCount.resetValue,maxValue: 10000),
                SizedBox(height: 20),
                ToggleTasbehiWidget(textHeader:  "سُبْحانَ اللَّه، والحمْدُ للَّه، وَلاَ إلهَ إلاَّ اللَّه واللَّه أكْبَرُ  ", text:  " غرس الجنة (100)",
                    count: ghersElGanaCount.count, incrementCount:  ghersElGanaCount.incrementCount,
                    reset: ghersElGanaCount.resetValue,maxValue: 100),
                SizedBox(height: 20),
                InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SalaWidget()),
                      );
                    },
                    child: HeaderWidget(text: "  الصلاة النارية والإبراهيمية")),
                /*InkWell(
                    onTap: () {
                      setState(() {
                        _showSecondWidget = !_showSecondWidget;
                      });
                    },
                    child: HeaderWidget(text:  "أستغفر الله")),
                Visibility(
                  visible: _showSecondWidget,
                  child: TasbihCounter(
                    "أستغفر الله",
                    astaghfirullahCount.count,
                    astaghfirullahCount.incrementCount,
                    100,
                  ),
                ),*/
                /*Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                        //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                      ),
                      tileColor: Colors.brown[200],

                      title: Text("سبحان الله",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>  TasbihCounter(
                                "سبحان الله",
                                subhanAllahCount.count,
                                subhanAllahCount.incrementCount,
                                33

                              ),
                          ),
                        );
                      },
                    ),
                  ),
                ),*/
                /*Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                        //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                      ),
                      tileColor: Colors.brown[200],

                      title: Text(" سبحان الله وبحمده",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TasbihCounter(
                                "أستغفر الله",
                                astaghfirullahCount.count,
                                astaghfirullahCount.incrementCount,
                                100
                              ),),
                        );
                      },
                    ),
                  ),
                ),*/

              /*  Directionality(
                  textDirection: TextDirection.rtl,
                  child: InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => TasbehWidget(text: "سبحان الله", key: UniqueKey(), // Pass a unique key for each instance
                     )),
                    );
                  },child: Text("سبحان الله",textDirection: TextDirection.rtl,)),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => TasbehWidget(text: " سبحان الله وبحمده", key: UniqueKey(), // Pass a unique key for each instance
                       )),
                    );

                  },child: Text(" سبحان الله وبحمده",textDirection: TextDirection.rtl,)),
                ),
                    */

              /*  SizedBox(height: 50,),
                SizedBox(

                  /// set the [width] and [height] of the displayable area
                    height: 150,
                    width: 150,
                    child: InkWell(
                      onTap: (){
                        Provider.of<TasbehProvider>(context,listen: false).incrementCount();
                      },
                      child: SingleGradientStackCircularProgressBar(
                        size: 200,
                        progressStrokeWidth: 15,
                        backStrokeWidth: 15,
                        startAngle:barValueProvider.value ,
                        mergeMode: true,
                        maxValue: 33,
                        backColor: Color(0xffD7DEE7),
                        barColores: [Colors.red, Colors.blue, Colors.green],
                        fullProgressColor: Colors.green,
                        barValue: barValueProvider.value,
                      ),
                    )),
                InkWell(
                    onTap: (){
                      Provider.of<TasbehProvider>(context,listen: false).resetValue();
                    },
                    child: Icon(Icons.replay)),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
  /*void updateBarValue(double newValue) {
    final barValueProvider = Provider.of<TasbehProvider>(context, listen: false);
    barValueProvider.value = newValue;
  }*/
}
