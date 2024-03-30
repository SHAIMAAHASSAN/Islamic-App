import 'package:flutter/material.dart';
import 'package:islamicapp/widgets/tasbihCounter.widget.dart';

import 'header.widget.dart';

class ToggleTasbehiWidget extends StatefulWidget {
  const ToggleTasbehiWidget({super.key,required this.textHeader,required this.text,required this.count,
    required this.incrementCount,required this.reset,required this.maxValue});
  final String textHeader;
  final String text;
  final int count;
  final void Function() incrementCount;
  final void Function() reset;
  final double maxValue;
  @override
  State<ToggleTasbehiWidget> createState() => _ToggleTasbehiWidgetState();
}

class _ToggleTasbehiWidgetState extends State<ToggleTasbehiWidget> {
  bool _showSecondWidget = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        InkWell(
          onTap: (){
            setState(() {
              _showSecondWidget = !_showSecondWidget;
            });
          },
          child: HeaderWidget(text: widget.textHeader),
        ),
        Visibility(
          visible: _showSecondWidget,
          child:TasbihCounter(widget.text, widget.count, widget.incrementCount,widget.reset, widget.maxValue)
        ),

      ],

    );
  }
}
