import 'package:flutter/material.dart';
import 'package:islamicapp/model/prayerCount.model.dart';
import 'package:islamicapp/widgets/doaa.widget.dart';
import 'package:islamicapp/widgets/header.widget.dart';
import 'package:islamicapp/widgets/tasbihCounter.widget.dart';
import 'package:provider/provider.dart';
class SalaWidget extends StatefulWidget {
  const SalaWidget({super.key});

  @override
  State<SalaWidget> createState() => _SalaWidgetState();
}

class _SalaWidgetState extends State<SalaWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() => context.read<SalaNariaCount>().loadCount());
    Future.microtask(() => context.read<SalaSahabiaCount>().loadCount());
  }
  @override
  Widget build(BuildContext context) {
    final salaNariaCount = Provider.of<SalaNariaCount>(context);
    final salaSahabiaCount = Provider.of<SalaSahabiaCount>(context);
    return  Scaffold(appBar: AppBar(),
    body: SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(height: 10,),
            HeaderWidget(text: "الصلاة النارية"),
            DoaaWidget(text: " اللَّهُمَّ صلّ صلاةً كاملةً وسلّمْ سلامًا تامًا على نبىٍ تنحلُ به العقدُ وتنفرجُ به الكُرَبُ وتُقْضَى به الحوائجُ وتُنَالُ به الرغائبُ وَحسنُ الخَوَاتِيم ويُستسقى الغمامُ بوجههِ الكريمِ وعلى آله وصَحبه وسلِّمِ"),
            TasbihCounter(" الصلاة النارية (4444)" ,salaNariaCount.count,  salaNariaCount.incrementCount, salaNariaCount.resetValue,4444),
            SizedBox(height: 10,),
            HeaderWidget(text: "الصلاة الإبراهيمية"),
            DoaaWidget(text: "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى آلِ إِبْرَاهِيمَ، إِنَّكَ حَمِيدٌ مَجِيدٌِ"),
            TasbihCounter(" الصلاة الإبراهيمية (10000)" ,salaSahabiaCount.count,  salaSahabiaCount.incrementCount,salaSahabiaCount.resetValue, 10000),
          ],
        ),
      ),
    ),);
  }
}
