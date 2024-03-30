import 'package:flutter/material.dart';
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
            //side: BorderSide(color: Colors.grey, width: 1.0), // Customize border
          ),
          tileColor: Colors.brown[200],

          title:  Text(text,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),),

        ),
      ),
    );
  }
}
