import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/widgets/count.racker.widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../model/prayerCount.model.dart';
class TasbihCounter extends StatefulWidget {
  final String _text;
  final int _count;
  final void Function() _incrementCount ;
  final void Function() _reset ;
  final double maxValue;



  TasbihCounter(this._text, this._count, this._incrementCount,this._reset,this.maxValue);

  @override
  State<TasbihCounter> createState() => _TasbihCounterState();
}

class _TasbihCounterState extends State<TasbihCounter> {
 /* @override
  void initState() {
    super.initState();
    // Provider.of<TasbehProvider>(context, listen: false).loadSavedValue();
    Future.microtask(() => context.read<SubhanAllahCount>().loadCount());
    Future.microtask(() => context.read<AstaghfirullahCount>().loadCount());
  }*/
  @override
  Widget build(BuildContext context) {

/*    final subhanAllahCount = Provider.of<SubhanAllahCount>(context);
    final astaghfirullahCount = Provider.of<AstaghfirullahCount>(context);*/
    return  Column(
      children: [
        // Text for the specific dhikr
        /*Text(
          _text,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 40),*/
        SizedBox(height: 20),
        // Row for displaying "beads"
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 90.0,
              animation: false,
              animationDuration: 1200,
              lineWidth: 20.0,
              percent: widget._count/widget.maxValue,
              center: new Text(
               widget._count.toString(),
                style:
                new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Color(0xffD7DEE7) ,
              progressColor: Colors.green,
            ),
            /*SingleGradientStackCircularProgressBar(

              size: 150,
              progressStrokeWidth: 15,
              backStrokeWidth: 15,
              //startAngle:_count.toDouble(),
              //widgetValues[widget.key.toString()] ??0 ,
              mergeMode: true,
              maxValue: maxValue,
              backColor: Color(0xffD7DEE7),
              barColores: [Colors.red, Colors.blue, Colors.green],
              fullProgressColor: Colors.green,
              barValue: _count.toDouble(),
              //widgetValues[widget.key.toString()]??0 ,
            ),*/
            /*Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _getColor(_text),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$_count",
                  style: TextStyle(fontSize: 16), // Adjust font size as needed
                ),
              ),
            ),*/
          ],
        ),
        SizedBox(height: 30),
        // Button to increment count
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             onPressed:
             widget._incrementCount
             ,
             child: Text(widget._text,maxLines: 2,overflow: TextOverflow.ellipsis,),
           ),
           SizedBox(width: 30,),
           InkWell(
               onTap: widget._reset,
               child: Icon(Icons.replay)),
         ],
        ),
      ],
    );
  }

  Color _getColor(String text) {
    if (text == "سبحان الله") {
      return Colors.lightBlue;
    } else if (text == "أستغفر الله") {
      return Colors.lightGreen;
    } else {
      return Colors.grey;
    }
  }
}