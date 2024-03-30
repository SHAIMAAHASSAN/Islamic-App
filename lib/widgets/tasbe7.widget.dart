import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/tasbeh.provider.dart';
import '../utils/images.dart';
class TasbehWidget extends StatefulWidget {
  const TasbehWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<TasbehWidget> createState() => _TasbehWidgetState();
}

class _TasbehWidgetState extends State<TasbehWidget> {
@override
  void initState() {
  //Provider.of<TasbehProvider>(context, listen: false).initialize();
  Provider.of<TasbehProvider>(context, listen: false).loadSavedValue();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final barValueProvider = Provider.of<TasbehProvider>(context);
    return   Scaffold(
      appBar: AppBar(title: Align(alignment:Alignment.centerRight,child: Text(widget.text)),),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.black38,
          image: DecorationImage(
            image: AssetImage(ImagesPath.backgroundHDw),
            fit: BoxFit.cover,
            opacity: .5,
          ),
        ),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             // SizedBox(height: 50,),
              SizedBox(


                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: (){
                     // Provider.of<TasbehProvider>(context, listen: false).incrementCount(widget.key.toString());
                     Provider.of<TasbehProvider>(context,listen: false).incrementCount();
                    },
                    child: SingleGradientStackCircularProgressBar(
                      key: widget.key,
                      size: 200,
                      progressStrokeWidth: 15,
                      backStrokeWidth: 15,
                      startAngle:barValueProvider.value,
                      //widgetValues[widget.key.toString()] ??0 ,
                      mergeMode: true,
                      maxValue: 33,
                      backColor: Color(0xffD7DEE7),
                      barColores: [Colors.red, Colors.blue, Colors.green],
                      fullProgressColor: Colors.green,
                      barValue: barValueProvider.value,
                      //widgetValues[widget.key.toString()]??0 ,
                    ),
                  )),
              InkWell(
                  onTap: (){

                   Provider.of<TasbehProvider>(context,listen: false).resetValue(/*widget.key.toString()*/);
                  },
                  child: Icon(Icons.replay)),
            ],
          ),
        ),
      ),
    )
    ;
  }
}
