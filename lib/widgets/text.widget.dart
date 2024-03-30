import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  const TextWidget({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.star,size: 10,),
                SizedBox(width: 5,),
                Flexible(
                  child: Text(text
                    ,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 14),),
                ),
              ],
            ),
          ),
        ));
  }
}
