import 'package:animated_list_item/animated_list_item.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/model/data.massa.dart';
import 'package:islamicapp/model/data.omara.dart';
import 'package:islamicapp/widgets/header.widget.dart';
import 'package:islamicapp/widgets/omara.widget.dart';
import 'package:islamicapp/widgets/photo.view.widget.dart';
import 'package:islamicapp/widgets/text.widget.dart';
import 'package:photo_view/photo_view.dart';

import '../model/data.evening.model.dart';
import '../widgets/card.widget.dart';

class DoaaPage extends StatefulWidget {
  const DoaaPage({super.key});

  @override
  State<DoaaPage> createState() => _DoaaPageState();
}

class _DoaaPageState extends State<DoaaPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "العمرة",
                textDirection: TextDirection.rtl,
              )),
        ),
        body: SafeArea(
            child: CustomScrollView(
            slivers: [

            SliverList(
            delegate: SliverChildBuilderDelegate(
        (context, index) {
      if (index == 0) {
        // Your tile with play/pause button and text
        return


          Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Adjust radius as needed
                  //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                ),
                tileColor: Colors.brown[200],
                title: const Text(
                  "أركان العمرة",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
                              ),
                            ),
                          ),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "الاحرام",
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                              )),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "السعي",
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                              )),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "الطواف",
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Adjust radius as needed
                  //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                ),
                tileColor: Colors.brown[200],
                title: const Text(
                  "واجـبـات الاحـرام",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
                              ),
                            ),
                          ),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "الإحرام من الميقات أو الحل لأهل مكة",
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                              )),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "الحلق أو التقصير للذكر و تقصر قدر أنملة للأنثى",
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Adjust radius as needed
                  //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
                ),
                tileColor: Colors.brown[200],
                title: const Text(
                  "سنن الاحـرام",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
                              ),
                            ),
                          ),
                          const TextWidget(text: "الغسل و التطيب"),
                          const TextWidget(text: " لبس إزار و رداء أبيضين "),
                          const TextWidget(text: "التلبية و الذكر عند الاحرام "),
                          const TextWidget(text: "الاضبطاع لطواف القدوم "),
                          const TextWidget(
                              text: "الاحرام بعد ركعتي فريضة أو سنة وضوء ونحوه . "),
                          const TextWidget(
                              text: "والرَّمَل للرجل في طوافه في الأشواط الثلاثة الأول"),
                          const TextWidget(text: "استلام الركن اليماني من الكعبة"),
                          const TextWidget(text: " الادعية و الاذكار ."),
                          const TextWidget(text: "الدعاء علي الصفا والمروة ."),
                          const TextWidget(text: "صعود جبل الصفا و جبل المروة ."),
                          const TextWidget(text: "السعي بين الاخضريين للذكر"),
                          const HeaderWidget(text: "صفة العمرة"),

                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PhotoViewWidget()),
                      );
                    } ,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                          height: 250,
                       decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/saftel3mora2.jpg"),
                        fit: BoxFit.contain,
                      ),),
                      ),
                    ),

                  SizedBox(height:220,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: dataOmara.length,
                          itemBuilder: (context,index) {
                            return AnimatedListItem(
                              index: index,
                              length: dataOmara.length,
                              aniController: _animationController,
                              animationType: AnimationType.rotate,
                              child:
                              OmaraWidget(text: dataOmara[index].text1, text2: dataOmara[index].text2, text3: dataOmara[index].text3)
                            );
                          }),
                    ),
                  ),

                  const HeaderWidget(text: "المسعي"),
          ],
          );
      }
                /*  SizedBox(height:MediaQuery.of(context).size.height* 0.75,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListView.builder(
                         // scrollDirection: Axis.horizontal,
                          itemCount: dataMassa.length,
                          itemBuilder: (context,index) {*/
                            return AnimatedListItem(
                                index: index,
                                length: dataMassa.length,
                                aniController: _animationController,
                                animationType: AnimationType.rotate,
                                child:
                                OmaraWidget(text: dataMassa[index].text1, text2: dataMassa[index].text2, text3: dataMassa[index].text3)

                            );
        },
              childCount: dataMassa.length,
            ),
            ),
            ],

                          //),
                   // ),
                 // ),




        )
    )
    );



  }
}
