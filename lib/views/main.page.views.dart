import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamicapp/views/adaya.page.dart';
import 'package:islamicapp/views/doaa.page.dart';
import 'package:islamicapp/views/evening.page.dart';
import 'package:islamicapp/views/morning.page.dart';
import 'package:islamicapp/views/qabliha.dart';
import 'package:islamicapp/views/tasbeh..page.dart';

import '../utils/images.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
           // color: Colors.black38,
          image: DecorationImage(
            image: AssetImage(ImagesPath.backgroundHDw),
            fit: BoxFit.cover,
          opacity: .7,
          ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                 /*   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MorningPage()),
                    );
                    //  Get.to(() =>MorningPage(),transition: Transition.circularReveal);
                    // Get.to(MorningPage(),transition: Transition.circularReveal);*/
                  },
                  child: Text("أذكار المسلم")),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                      //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                    ),
                    tileColor: Colors.brown[200],
                    leading: CircleAvatar(backgroundImage: AssetImage(
                      ImagesPath.morning,
                    )
                      ,/*radius: 25,*/),
                    title: Text("أذكار الصباح",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => MorningPage()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                      //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                    ),
                    tileColor: Colors.brown[200],
                    leading: CircleAvatar(backgroundImage: AssetImage(
                      ImagesPath.eveningHD,
                    )
                      ,/*radius: 25,*/),
                    title: Text("أذكار المساء",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => EveningPage()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                      //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                    ),
                    tileColor: Colors.brown[200],
                    leading: CircleAvatar(backgroundImage: AssetImage(
                      "assets/images/kaaba.png",
                    )
                      ,/*radius: 25,*/),
                    title: Text("العمرة",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DoaaPage()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                      //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                    ),
                    tileColor: Colors.brown[200],
                    leading: CircleAvatar(backgroundImage: AssetImage(
                      ImagesPath.doaa,
                    )
                      ,/*radius: 25,*/),
                    title: Text("أدعية و أذكار",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => AdayaPage()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                      //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                    ),
                    tileColor: Colors.brown[200],
                    leading: CircleAvatar(backgroundImage: AssetImage(
                      ImagesPath.tasbeh,
                    )
                      ,radius: 25,),
                    title: Text("التسابيح",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => TasbehPage()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                      //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                    ),
                    tileColor: Colors.brown[200],
                    leading: CircleAvatar(backgroundImage: AssetImage(
                      ImagesPath.qabliha,
                    )
                      ,/*radius: 25,*/),
                    title: Text("القبله",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => QiblahPage()),
                      );
                    },
                  ),
                ),
              ),
             /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage(
                          ImagesPath.morning,
                        ),
                        width: 100,
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MorningPage()),
                            );
                            //  Get.to(() =>MorningPage(),transition: Transition.circularReveal);
                            // Get.to(MorningPage(),transition: Transition.circularReveal);
                          },
                          child: Text("أذكار الصباح"))
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage(
                          ImagesPath.eveningHD,
                        ),
                        width: 100,
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => EveningPage()),
                            );
                            //Get.to(() =>EveningPage(),transition: Transition.upToDown);
                          },
                          child: Text("أذكار المساء"))
                    ],
                  )
                ],
              )*/
            ],
          ),
        ));
  }
}
