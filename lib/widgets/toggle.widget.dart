import 'package:flutter/material.dart';

import 'doaa.widget.dart';
import 'header.widget.dart';
class ToggoleWidget extends StatefulWidget {
  const ToggoleWidget({super.key,required this.textHeader,required this.textDoaa});
 final String textHeader;
   final String textDoaa;

  @override
  State<ToggoleWidget> createState() => _ToggoleWidgetState();
}

class _ToggoleWidgetState extends State<ToggoleWidget> {
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
          child:DoaaWidget(text: widget.textDoaa),
        ),

      ],

    );
  }
}
