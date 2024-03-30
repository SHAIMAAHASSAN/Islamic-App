import 'package:flutter/material.dart';
class OmaraWidget extends StatelessWidget {
  const OmaraWidget({super.key,required this.text,required this.text2,required this.text3});
final String text;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: 250,
        decoration:  BoxDecoration(
          color: Colors.brown[50],
          borderRadius: const BorderRadius.all( Radius.circular(20)),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(text,style: TextStyle(color: Colors.red),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10),
                child: Text(text2,style: TextStyle(color: Colors.grey,fontSize: 14),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                child: Text(text3,style: TextStyle(color: Colors.black,fontSize: 16),),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
